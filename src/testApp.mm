#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){	
	// initialize the accelerometer
	ofxAccelerometer.setup();
	
	//If you want a landscape oreintation 
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_RIGHT);
	
	ofBackground(127,127,127);
}

//--------------------------------------------------------------
void testApp::update(){
    /* debugコンソールへ出力 */
        ofLog(OF_LOG_VERBOSE,
              "x = %f, y = %f  z=%f",
              ofxAccelerometer.getForce().x,
              ofxAccelerometer.getForce().y,
              ofxAccelerometer.getForce().z);
}

//--------------------------------------------------------------
void testApp::draw(){
	
    /* 回転方向取得 */
    //ofPoint point = ofxAccelerometer.getOrientation();
    /* 加速度取得 */
    ofPoint point = ofxAccelerometer.getForce();
    
    /* 加速度を100倍して背景色へ */
    ofBackground(point.x * 100.0+ 128, point.y*100.0 + 128, point.z*100 + 128);
    
    /* 画面へ出力 */
    ofSetColor(0, 0, 0);
    string debug;
    debug = "x:" + ofToString(point.x * 100.0+ 128);
    ofDrawBitmapString(debug, 50, 50);
    debug = "y:" + ofToString(point.y * 100.0 + 128);
    ofDrawBitmapString(debug, 50, 100);
    debug = "z:" + ofToString(point.z * 100 + 128);
    ofDrawBitmapString(debug, 50, 150);
    std::cerr<<debug<<std::endl;
}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

