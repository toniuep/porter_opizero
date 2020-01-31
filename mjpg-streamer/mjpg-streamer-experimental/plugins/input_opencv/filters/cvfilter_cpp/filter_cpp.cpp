/**
    Example C++ OpenCV filter plugin that doesn't do anything. Copy/paste this
    to create your own awesome filter plugins for mjpg-streamer.
    
    At the moment, only the input_opencv.so plugin supports filter plugins.
*/

#include "opencv2/opencv.hpp"
#include <zbar.h>

using namespace cv;
using namespace std;
using namespace zbar;

// exports for the filter
extern "C" {
    bool filter_init(const char * args, void** filter_ctx);
    void filter_process(void* filter_ctx, Mat &src, Mat &dst);
    void filter_free(void* filter_ctx);

}

      ImageScanner scanner;  
      
/**
    Initializes the filter. If you return something, it will be passed to the
    filter_process function, and should be freed by the filter_free function
*/
bool filter_init(const char * args, void** filter_ctx) {
    scanner.set_config(ZBAR_NONE, ZBAR_CFG_ENABLE, 1);
    return true; 
}

/**
    Called by the OpenCV plugin upon each frame
*/
void filter_process(void* filter_ctx, Mat &src, Mat &dst) {
    // TODO insert your filter code here
    Mat grey;
    Mat frame = src;
        cvtColor(frame,grey,CV_BGR2GRAY);

        int width = frame.cols;  
        int height = frame.rows;  
        uchar *raw = (uchar *)grey.data;  
        // wrap image data  
        Image image(width, height, "Y800", raw, width * height);  
        // scan the image for barcodes  
        int n = scanner.scan(image);  
        // extract results  
        for(Image::SymbolIterator symbol = image.symbol_begin();  
        symbol != image.symbol_end();  
        ++symbol) {  
                vector<Point> vp;  
        // do something useful with results  
        //cout << "decoded " << symbol->get_type_name()  << " symbol \"" << symbol->get_data() << '"' <<" "<< endl; 
        if(symbol->get_data() == "http://es.wikipedia.org/"){
          //cout << "oooppppennnnnnnnnn ..........." << endl;
          cout<<"open"<<endl;
          putText(frame, "ACCESO PERMITIDO", Point(50,100), FONT_HERSHEY_SIMPLEX, 1, Scalar(0,200,0), 4);
  
        }else{
          putText(frame, "ACCESO DENEGADO", Point(50,100), FONT_HERSHEY_SIMPLEX, 1, Scalar(0,0,200), 4);
        }
           int n = symbol->get_location_size();  
           for(int i=0;i<n;i++){  
                vp.push_back(Point(symbol->get_location_x(i),symbol->get_location_y(i))); 
           }  
           RotatedRect r = minAreaRect(vp);  
           Point2f pts[4];  
           r.points(pts);  
           for(int i=0;i<4;i++){  
                line(frame,pts[i],pts[(i+1)%4],Scalar(255,0,0),3);  
           }  
           //cout<<"Angle: "<<r.angle<<endl;  
        }  
    dst = frame;
}

/**
    Called when the input plugin is cleaning up
*/
void filter_free(void* filter_ctx) {
    // empty
}

