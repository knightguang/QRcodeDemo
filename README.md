# QRcodeDemo
原生二维码扫描Demo
####二维码扫描，导入以下框架
`import <AVFoundation/AVFoundation.h>`
<br/>
/**
 *  当从二维码中获取到信息时，就会调用下面的方法
 *
 *  @param captureOutput   输出对象
 *  @param metadataObjects 信息
 *  @param connection
 <br/>*/
<br/>
`- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection;`

####获取扫描到的数据中的回传数据类型：
        /** AVMetadataMachineReadableCodeObject
         *  AVMetadataObjectTypeEAN13Code-->条形码
         *  AVMetadataMachineReadableCodeObject: 0x14ed1b210, type="org.gs1.EAN-13", bounds={ 0.5,0.4 0.0x0.2 }>corners { 0.5,0.6 0.5,0.6 0.5,0.4 0.5,0.4 }, time 639420438013541, stringValue "9787512329355"
         *
         ** AVMetadataObjectTypeQRCode-->二维码
         *  AVMetadataMachineReadableCodeObject: 0x14eee91b0, type="org.iso.QRCode", bounds={ 0.3,0.5 0.2x0.4 }>corners { 0.3,0.8 0.5,0.9 0.5,0.5 0.3,0.5 }, time 639788102936291, stringValue "http://down.80pm.com/?key=ytyp"
         */
        /** AVMetadataFaceObject-->AVMetadataObjectTypeFace封面
         *  AVMetadataFaceObject: 0x14edaf250, faceID=1, bounds={0.5,0.4 0.1x0.2}, rollAngle=270.0, yawAngle=0.0, time=639983959888875
         */
    
<br/>
####扫描效果图：
<br/>
![](https://github.com/knightguang/QRcodeDemo/blob/master/QRcodeDemo/IMG_0264.PNG)
<br/>
