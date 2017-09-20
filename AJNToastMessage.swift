//
//  Created by indianic on 18/09/17.
//

import UIKit

/**
 Edge of the view's parent that the animation should involve
 - none: involves no edge
 - top: involves the top edge of the parent
 - bottom: involves the bottom edge of the parent
 - left: involves the left edge of the parent
 - right: involves the right edge of the parent
 */

public enum SimpleAnimationEdge {
    case none
    case top
    case bottom
    case left
    case right
}

class AJNToastMessage: UIView {
    
    var lblMessage:UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    //MARK: UIView framing.
    // Set UIView frame for Center
    
    private func createCenterFrame(frame:CGRect)
    {
        self.frame = frame
        let fm: CGRect = UIScreen.main.bounds
        self.center = CGPoint(x: fm.size.width / 2, y: fm.size.height / 2)
    }
    
    // Set UIView frame for Top and Bottom
    
    private func createTopBottomFrame(frame:CGRect)
    {
        self.frame = frame
    }
    
    //MARK: Message Position
    /**
     
     Show text message at top.
     Parameters :-
     TextMessage        : Mention text message in string formate.
     TextColor          : Mention text message color, like 'UIColor.red'
     TextFont           : Mention text message font name and size, like 'UIFont.systemFont(ofSize: 14)'
     IsViewCornerRadius : It's BOOL value, if developer wants to allowed corner radius in UIView then set 'true'.
     ControllerName     : Developer has to assign 'UIViewController' object, means 'self'.
     
     */

    
    func MessageInTop(TextMessage: String, TextColor: UIColor, TextFont : UIFont, IsViewCornerRadius : Bool , ControllerName : UIViewController, ViewColor : UIColor)
    {
        
        let myFrame: CGRect = UIScreen.main.bounds
        self.messageInText(TextMessage: TextMessage, TextColor: TextColor, TextFont: TextFont)
        if (DeviceType.IS_IPHONEX)
        {
            createTopBottomFrame(frame: CGRect(x: 5, y: ControllerName.navigationController!.navigationBar.frame.height + 50, width: myFrame.size.width - 10, height: lblMessage.frame.height + 10))
        }
        else
        {
            createTopBottomFrame(frame: CGRect(x: 5, y: ControllerName.navigationController!.navigationBar.frame.height + 30, width: myFrame.size.width - 10, height: lblMessage.frame.height + 10))
        }
        lblMessage.center = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 2)
        self.viewDesign(IsViewCornerRadius: IsViewCornerRadius, ControllerName: ControllerName, ViewColor: ViewColor)
        
    }
    
    /**
     
     Show text message at center.
     Parameters :-
     TextMessage        : Mention text message in string formate.
     TextColor          : Mention text message color, like 'UIColor.red'
     TextFont           : Mention text message font name and size, like 'UIFont.systemFont(ofSize: 14)'
     IsViewCornerRadius : It's BOOL value, if developer wants to allowed corner radius in UIView then set 'true'.
     ControllerName     : Developer has to assign 'UIViewController' object, means 'self'.
     
     */

    
    func MessageInCenter(TextMessage: String, TextColor: UIColor, TextFont : UIFont, IsViewCornerRadius : Bool , ControllerName : UIViewController, ViewColor : UIColor)
    {
        
        let myFrame: CGRect = UIScreen.main.bounds
        self.messageInText(TextMessage: TextMessage, TextColor: TextColor, TextFont: TextFont)
        createCenterFrame(frame: CGRect(x: 5, y: myFrame.size.height / 2.0, width: myFrame.size.width - 10, height: lblMessage.frame.height + 10))
        lblMessage.center = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 2)
        self.viewDesign(IsViewCornerRadius: IsViewCornerRadius, ControllerName: ControllerName, ViewColor: ViewColor)
        
    }
    /**
 
     Show text message at bottom.
     Parameters :-
     TextMessage        : Mention text message in string formate.
     TextColor          : Mention text message color, like 'UIColor.red'
     TextFont           : Mention text message font name and size, like 'UIFont.systemFont(ofSize: 14)'
     IsViewCornerRadius : It's BOOL value, if developer wants to allowed corner radius in UIView then set 'true'.
     ControllerName     : Developer has to assign 'UIViewController' object, means 'self'.
     
     */
    
    func MessageInBottom(TextMessage: String, TextColor: UIColor, TextFont : UIFont, IsViewCornerRadius : Bool , ControllerName : UIViewController, ViewColor : UIColor)
    {
        
        let myFrame: CGRect = UIScreen.main.bounds
        self.messageInText(TextMessage: TextMessage, TextColor: TextColor, TextFont: TextFont)
        if (DeviceType.IS_IPHONEX)
        {
            createTopBottomFrame(frame: CGRect(x: 5, y: myFrame.size.height - (lblMessage.frame.height + 40) , width: myFrame.size.width - 10, height: lblMessage.frame.height + 10))
        }
        else
        {
            createTopBottomFrame(frame: CGRect(x: 5, y: myFrame.size.height - (lblMessage.frame.height + 20) , width: myFrame.size.width - 10, height: lblMessage.frame.height + 10))
        }
        lblMessage.center = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 2)
        self.viewDesign(IsViewCornerRadius: IsViewCornerRadius, ControllerName: ControllerName, ViewColor: ViewColor)
    }
    
    //MARK: Animation
    
    /**
 
     Fades this view in and out.
     
     */
    
    func fadeViewInThenOut() {
        
        self.alpha = 0.0
        let animationDuration = 1.0
        
        UIView.animate(withDuration: animationDuration,delay: 0.5, animations: { () -> Void in
            self.alpha = 1
        }) { (Bool) -> Void in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                UIView.animate(withDuration: animationDuration, delay: 0.5, options: [.curveEaseOut], animations: { () -> Void in
                    self.alpha = 0
                }, completion: {
                    (Bool) -> Void in
                    self.lblMessage.removeFromSuperview()
                    self.removeFromSuperview()
                })
            }
        }
    }
    
    /**
     
     Moves this view into position, as though it were zooming in and out of the screen.
     
     */
    
    func zoomInThenOut()
    {
        self.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        UIView.animate(withDuration: 1.0, animations: {() -> Void in
            self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: {(_ finished: Bool) -> Void in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                UIView.animate(withDuration: 1.0, animations: {() -> Void in
                    self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                }, completion: {(_ finished: Bool) -> Void in
                    self.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                    self.lblMessage.removeFromSuperview()
                    self.removeFromSuperview()
                })
            }
        })
    }
    
    /**
 
     Moves this view into position, as though it were popping in and out of the screen.
     
     */
    
    func popViewInThenOut()
    {
        
        isHidden = false
        alpha = 0
        transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        UIView.animate(
            withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.55, initialSpringVelocity: 3,
            options: .curveEaseOut, animations: {
                self.transform = .identity
                self.alpha = 1
        }, completion: {
            (Bool) -> Void in
            //
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                
                self.alpha = 1
                let endTransform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                let prepareTransform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                
                UIView.animateKeyframes(
                    withDuration: 0.5, delay: 0.5, options: .calculationModeCubic, animations: {
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.2) {
                            self.transform = prepareTransform
                        }
                        UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.3) {
                            self.transform = prepareTransform
                        }
                        UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5) {
                            self.transform = endTransform
                            self.alpha = 0
                        }
                }, completion: {(_ finished: Bool) -> Void in
                    self.removeFromSuperview()
                    self.lblMessage.removeFromSuperview()
                })
            }
        })
    }
    
    /**
 
     Slides this view into position, from an edge of the parent (if "from" or "to" is set).
     Parameters :-
     from : edge of the parent view that should be used as the starting point of the animation, like 'top', 'left'
     to : edge of the parent view that should be used as the ending point of the animation, like 'bottom' , 'right'
     
     */
    
    func slideViewInThenOut(from edge: SimpleAnimationEdge = .none , to edgeTo: SimpleAnimationEdge = .none) {
        
        let offset = offsetFor(edge: edge)
        transform = CGAffineTransform(translationX: offset.x + 0, y: offset.y + 0)
        isHidden = false
        UIView.animate(
            withDuration: 0.4, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 2,
            options: .curveEaseOut, animations: {
                self.transform = .identity
                self.alpha = 1
        }, completion: {(_ finished: Bool) -> Void in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                
                let offset = self.offsetFor(edge: edgeTo)
                let endTransform = CGAffineTransform(translationX: offset.x + 0, y: offset.y + 0)
                UIView.animate(
                    withDuration: 0.25, delay: 0.5, options: .curveEaseOut, animations: {
                        self.transform = endTransform
                        
                }, completion: {(_ finished: Bool) -> Void in
                    self.removeFromSuperview()
                    self.lblMessage.removeFromSuperview()
                })
            }
        })
    }
    
    //MARK: Text message label and UIView design
    
    /**
 
     Assign error message and design text according to requirements. It's private method, no need to use out side of this class.
     Parameters :-
     TextMessage : Mention text message in string formate.
     TextColor   : Mention text message color, like 'UIColor.red'
     TextFont    : Mention text message font name and size, like 'UIFont.systemFont(ofSize: 14)'
     
     */
    
    private func messageInText(TextMessage: String, TextColor: UIColor, TextFont : UIFont){
        
        let mainFrame: CGRect = UIScreen.main.bounds
        lblMessage = UILabel(frame: CGRect(x: 0, y: 0, width: mainFrame.size.width - 30, height: CGFloat.greatestFiniteMagnitude))
        lblMessage.text = TextMessage
        lblMessage.textColor = TextColor
        lblMessage.numberOfLines = 0
        lblMessage.textAlignment = .center
        lblMessage.lineBreakMode = NSLineBreakMode.byWordWrapping
        lblMessage.font = TextFont
        lblMessage.sizeToFit()
        self.addSubview(lblMessage)
    }
    
    /**
     Design background view according to requirements. It's private method, no need to use out side of this class.
     Parameters :-
     IsViewCornerRadius : It's BOOL value, if developer wants to allowed corner radius in UIView then set 'true'.
     ControllerName : Developer has to assign 'UIViewController' object, means 'self'.
     ViewColor : Assign UIView background color, like 'UIColor.blue'.
    */
    
    private func viewDesign(IsViewCornerRadius : Bool , ControllerName : UIViewController, ViewColor : UIColor)
    {
        
        self.backgroundColor = ViewColor
        if (IsViewCornerRadius)
        {
            self.layer.cornerRadius = 10
        }
        ControllerName.view.addSubview(self)
    }
    
    //MARK: Check device type and Screen size
    // Device type and Screen size
    
    struct ScreenSize
    {
        static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
        static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
        static let SCREEN_MAX_LENGTH = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
        static let SCREEN_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    }
    
    struct DeviceType
    {
        static let IS_IPHONE_4_OR_LESS =  UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
        static let IS_IPHONE_5 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
        static let IS_IPHONE_6 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
        static let IS_IPHONE_6P = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
        static let IS_IPHONEX = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 812.0
    }
    
    //Entry Set Offset for animation
    
    
    private func offsetFor(edge: SimpleAnimationEdge) -> CGPoint {
        if let parentSize = self.superview?.frame.size {
            switch edge {
            case .none: return CGPoint.zero
            case .top: return CGPoint(x: 0, y: -frame.maxY)
            case .bottom: return CGPoint(x: 0, y: parentSize.height - frame.minY)
            case .left: return CGPoint(x: -frame.maxX, y: 0)
            case .right: return CGPoint(x: parentSize.width - frame.minX, y: 0)
            }
        }
        return .zero
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
