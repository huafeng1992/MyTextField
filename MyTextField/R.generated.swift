//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try font.validate()
    try intern.validate()
  }
  
  /// This `R.clr` struct is generated, and contains static references to 3 color palettes.
  /// NOTE: R.clr is deprecated and will be removed in a future R.swift version.
  struct clr {
    /// This `R.clr.myRSwiftColors` struct is generated, and contains static references to 5 colors.
    struct myRSwiftColors {
      /// <span style='background-color: #6A6A6A4C; color: #959595; padding: 1px 3px;'>#6A6A6A4C</span> See-through gray
      static let seeThroughGray = Rswift.ColorPaletteItemResource(name: "See-through gray", red: 0.417588144540787, green: 0.417588144540787, blue: 0.417588144540787, alpha: 0.298275858163834)
      /// <span style='background-color: #B6FFAB; color: #490054; padding: 1px 3px;'>#B6FFAB</span> All is A-OK
      static let allIsAOK = Rswift.ColorPaletteItemResource(name: "All is A-OK", red: 0.714088082313538, green: 1.0, blue: 0.668711006641388, alpha: 1.0)
      /// <span style='background-color: #FF8A7E; color: #007581; padding: 1px 3px;'>#FF8A7E</span> Severe error
      static let severeError = Rswift.ColorPaletteItemResource(name: "Severe error", red: 1.0, green: 0.542837381362915, blue: 0.492646008729935, alpha: 1.0)
      /// <span style='background-color: #FFEBA2; color: #00145D; padding: 1px 3px;'>#FFEBA2</span> Warning
      static let warning = Rswift.ColorPaletteItemResource(name: "Warning", red: 1.0, green: 0.921021163463593, blue: 0.63618391752243, alpha: 1.0)
      /// <span style='background-color: #FFFCF9; color: #000306; padding: 1px 3px;'>#FFFCF9</span> Slightly off-white
      static let slightlyOffWhite = Rswift.ColorPaletteItemResource(name: "Slightly off-white", red: 1.0, green: 0.988235294818878, blue: 0.976470589637756, alpha: 1.0)
      
      /// <span style='background-color: #6A6A6A4C; color: #959595; padding: 1px 3px;'>#6A6A6A4C</span> See-through gray
      /// 
      /// UIColor(red: 0.417588144540787, green: 0.417588144540787, blue: 0.417588144540787, alpha: 0.298275858163834)
      static func seeThroughGray(_: Void = ()) -> UIKit.UIColor {
        return UIKit.UIColor(red: 0.417588144540787, green: 0.417588144540787, blue: 0.417588144540787, alpha: 0.298275858163834)
      }
      
      /// <span style='background-color: #B6FFAB; color: #490054; padding: 1px 3px;'>#B6FFAB</span> All is A-OK
      /// 
      /// UIColor(red: 0.714088082313538, green: 1.0, blue: 0.668711006641388, alpha: 1.0)
      static func allIsAOK(_: Void = ()) -> UIKit.UIColor {
        return UIKit.UIColor(red: 0.714088082313538, green: 1.0, blue: 0.668711006641388, alpha: 1.0)
      }
      
      /// <span style='background-color: #FF8A7E; color: #007581; padding: 1px 3px;'>#FF8A7E</span> Severe error
      /// 
      /// UIColor(red: 1.0, green: 0.542837381362915, blue: 0.492646008729935, alpha: 1.0)
      static func severeError(_: Void = ()) -> UIKit.UIColor {
        return UIKit.UIColor(red: 1.0, green: 0.542837381362915, blue: 0.492646008729935, alpha: 1.0)
      }
      
      /// <span style='background-color: #FFEBA2; color: #00145D; padding: 1px 3px;'>#FFEBA2</span> Warning
      /// 
      /// UIColor(red: 1.0, green: 0.921021163463593, blue: 0.63618391752243, alpha: 1.0)
      static func warning(_: Void = ()) -> UIKit.UIColor {
        return UIKit.UIColor(red: 1.0, green: 0.921021163463593, blue: 0.63618391752243, alpha: 1.0)
      }
      
      /// <span style='background-color: #FFFCF9; color: #000306; padding: 1px 3px;'>#FFFCF9</span> Slightly off-white
      /// 
      /// UIColor(red: 1.0, green: 0.988235294818878, blue: 0.976470589637756, alpha: 1.0)
      static func slightlyOffWhite(_: Void = ()) -> UIKit.UIColor {
        return UIKit.UIColor(red: 1.0, green: 0.988235294818878, blue: 0.976470589637756, alpha: 1.0)
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 12 files.
  struct file {
    /// Resource file `AveriaLibre-B.ttf`.
    static let averiaLibreBTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "AveriaLibre-B", pathExtension: "ttf")
    /// Resource file `AveriaLibre-BI.ttf`.
    static let averiaLibreBITtf = Rswift.FileResource(bundle: R.hostingBundle, name: "AveriaLibre-BI", pathExtension: "ttf")
    /// Resource file `AveriaLibre-L.ttf`.
    static let averiaLibreLTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "AveriaLibre-L", pathExtension: "ttf")
    /// Resource file `AveriaLibre.ttf`.
    static let averiaLibreTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "AveriaLibre", pathExtension: "ttf")
    /// Resource file `Display P3.clr`.
    static let displayP3Clr = Rswift.FileResource(bundle: R.hostingBundle, name: "Display P3", pathExtension: "clr")
    /// Resource file `GdyBkltter1911.ttf`.
    static let gdyBkltter1911Ttf = Rswift.FileResource(bundle: R.hostingBundle, name: "GdyBkltter1911", pathExtension: "ttf")
    /// Resource file `My R.swift colors.clr`.
    static let myRSwiftColorsClr = Rswift.FileResource(bundle: R.hostingBundle, name: "My R.swift colors", pathExtension: "clr")
    /// Resource file `NSColorPanelSwatches.plist`.
    static let nsColorPanelSwatchesPlist = Rswift.FileResource(bundle: R.hostingBundle, name: "NSColorPanelSwatches", pathExtension: "plist")
    /// Resource file `Test.plist`.
    static let testPlist = Rswift.FileResource(bundle: R.hostingBundle, name: "Test", pathExtension: "plist")
    /// Resource file `Unnamed.clr`.
    static let unnamedClr = Rswift.FileResource(bundle: R.hostingBundle, name: "Unnamed", pathExtension: "clr")
    /// Resource file `mycolor.color`.
    static let mycolorColor = Rswift.FileResource(bundle: R.hostingBundle, name: "mycolor", pathExtension: "color")
    /// Resource file `tttt.png`.
    static let ttttPng = Rswift.FileResource(bundle: R.hostingBundle, name: "tttt", pathExtension: "png")
    
    /// `bundle.url(forResource: "AveriaLibre", withExtension: "ttf")`
    static func averiaLibreTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.averiaLibreTtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "AveriaLibre-B", withExtension: "ttf")`
    static func averiaLibreBTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.averiaLibreBTtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "AveriaLibre-BI", withExtension: "ttf")`
    static func averiaLibreBITtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.averiaLibreBITtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "AveriaLibre-L", withExtension: "ttf")`
    static func averiaLibreLTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.averiaLibreLTtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "Display P3", withExtension: "clr")`
    static func displayP3Clr(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.displayP3Clr
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "GdyBkltter1911", withExtension: "ttf")`
    static func gdyBkltter1911Ttf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.gdyBkltter1911Ttf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "My R.swift colors", withExtension: "clr")`
    static func myRSwiftColorsClr(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.myRSwiftColorsClr
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "NSColorPanelSwatches", withExtension: "plist")`
    static func nsColorPanelSwatchesPlist(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nsColorPanelSwatchesPlist
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "Test", withExtension: "plist")`
    static func testPlist(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.testPlist
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "Unnamed", withExtension: "clr")`
    static func unnamedClr(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.unnamedClr
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "mycolor", withExtension: "color")`
    static func mycolorColor(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.mycolorColor
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "tttt", withExtension: "png")`
    static func ttttPng(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.ttttPng
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 5 fonts.
  struct font: Rswift.Validatable {
    /// Font `AveriaLibre-BoldItalic`.
    static let averiaLibreBoldItalic = Rswift.FontResource(fontName: "AveriaLibre-BoldItalic")
    /// Font `AveriaLibre-Bold`.
    static let averiaLibreBold = Rswift.FontResource(fontName: "AveriaLibre-Bold")
    /// Font `AveriaLibre-Light`.
    static let averiaLibreLight = Rswift.FontResource(fontName: "AveriaLibre-Light")
    /// Font `AveriaLibre-Regular`.
    static let averiaLibreRegular = Rswift.FontResource(fontName: "AveriaLibre-Regular")
    /// Font `GoudyBookletter1911`.
    static let goudyBookletter1911 = Rswift.FontResource(fontName: "GoudyBookletter1911")
    
    /// `UIFont(name: "AveriaLibre-Bold", size: ...)`
    static func averiaLibreBold(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: averiaLibreBold, size: size)
    }
    
    /// `UIFont(name: "AveriaLibre-BoldItalic", size: ...)`
    static func averiaLibreBoldItalic(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: averiaLibreBoldItalic, size: size)
    }
    
    /// `UIFont(name: "AveriaLibre-Light", size: ...)`
    static func averiaLibreLight(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: averiaLibreLight, size: size)
    }
    
    /// `UIFont(name: "AveriaLibre-Regular", size: ...)`
    static func averiaLibreRegular(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: averiaLibreRegular, size: size)
    }
    
    /// `UIFont(name: "GoudyBookletter1911", size: ...)`
    static func goudyBookletter1911(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: goudyBookletter1911, size: size)
    }
    
    static func validate() throws {
      if R.font.averiaLibreBoldItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'AveriaLibre-BoldItalic' could not be loaded, is 'AveriaLibre-BI.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.averiaLibreRegular(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'AveriaLibre-Regular' could not be loaded, is 'AveriaLibre.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.averiaLibreLight(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'AveriaLibre-Light' could not be loaded, is 'AveriaLibre-L.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.goudyBookletter1911(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'GoudyBookletter1911' could not be loaded, is 'GdyBkltter1911.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.averiaLibreBold(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'AveriaLibre-Bold' could not be loaded, is 'AveriaLibre-B.ttf' added to the UIAppFonts array in this targets Info.plist?") }
    }
    
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 4 images.
  struct image {
    /// Image `tttt`.
    static let tttt = Rswift.ImageResource(bundle: R.hostingBundle, name: "tttt")
    /// Image `招生管家-全部权限整理`.
    static let 招生管家全部权限整理 = Rswift.ImageResource(bundle: R.hostingBundle, name: "招生管家-全部权限整理")
    /// Image `无数据`.
    static let 无数据 = Rswift.ImageResource(bundle: R.hostingBundle, name: "无数据")
    /// Image `无网络`.
    static let 无网络 = Rswift.ImageResource(bundle: R.hostingBundle, name: "无网络")
    
    /// `UIImage(named: "tttt", bundle: ..., traitCollection: ...)`
    static func tttt(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tttt, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "招生管家-全部权限整理", bundle: ..., traitCollection: ...)`
    static func 招生管家全部权限整理(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.招生管家全部权限整理, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "无数据", bundle: ..., traitCollection: ...)`
    static func 无数据(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.无数据, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "无网络", bundle: ..., traitCollection: ...)`
    static func 无网络(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.无网络, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      // There are no resources to validate
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R {
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard {
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let name = "Main"
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
