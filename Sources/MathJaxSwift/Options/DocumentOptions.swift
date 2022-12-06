//
//  DocumentOptions.swift
//  MathJaxSwift
//
//  Created by Colin Campbell on 12/6/22.
//

import Foundation
import JavaScriptCore

@objc public protocol DocumentOptionsExports: JSExport {
  var skipHtmlTags: [String] { get set }
  var includeHtmlTags: [String: String] { get set }
  var ignoreHtmlClass: String { get set }
  var processHtmlClass: String { get set }
}

@objc public class DocumentOptions: NSObject, Options, DocumentOptionsExports {
  
  // MARK: Default values
  
  public static let defaultSkipHtmlTags: [String] = [
    "script",
    "noscript",
    "style",
    "textarea",
    "pre",
    "code",
    "annotation",
    "annotation-xml"
  ]
  
  public static let defaultIncludedHtmlTags: [String: String] = [
    "br": "\n",
    "wbr": "",
    "#comment": ""
  ]
  
  public static let defaultIgnoreHtmlClass: String = "tex2jax_ignore"
  public static let defaultProcessHtmlClass: String = "tex2jax_process"
  
  // MARK: Properties
  
  /// This array lists the names of the tags whose contents should not be
  /// processed by MathJaX (other than to look for ignore/process classes as
  /// listed below).
  ///
  /// You can add to (or remove from) this list to prevent MathJax from
  /// processing mathematics in specific contexts. E.g.,
  ///
  /// ```javascript
  /// skipHtmlTags: {'[-]': ['code', 'pre'], '[+]': ['li']}
  /// ```
  ///
  /// would remove `code` and `pre` tags from the list, while adding `li` tags
  /// to the list.
  ///
  /// - Note: The default value is `["script", "noscript", "style", "textarea", "pre", "code", "annotation", "annotation-xml"`
  /// - SeeAlso: [Document Options](https://docs.mathjax.org/en/latest/options/document.html#document-skiphtmltags)
  dynamic public var skipHtmlTags: [String]
  
  /// This object specifies what tags can appear within a math expression, and
  /// what text to replace them by within the math.
  ///
  /// The default is to allow `<br>`, which becomes a newline, and `<wbr>` and
  /// HTML comments, which are removed entirely.
  ///
  /// - Note: The default value is `["br": "\n", "wbr": "", "#comment": ""]`
  /// - SeeAlso: [Document Options](https://docs.mathjax.org/en/latest/options/document.html#document-includehtmltags)
  dynamic public var includeHtmlTags: [String: String]
  
  /// This is the class name used to mark elements whose contents should not be
  /// processed by MathJax (other than to look for the `processHtmlClass`
  /// pattern below).
  ///
  /// - Note: This is a regular expression, and so you need to be sure to quote
  /// any regexp special characters. The pattern is inserted into one that
  /// requires your pattern to match a complete word, so setting
  /// `ignoreHtmlClass: 'class2'` would cause it to match an element with
  /// `class='class1 class2 class3'` but not `class='myclass2'`.
  ///
  /// - Note: You can assign several classes by separating them by the vertical
  /// line character (`|`). For instance, with
  /// `ignoreHtmlClass: 'class1|class2'` any element assigned a class of either
  /// `class1` or `class2` will be skipped. This could also be specified by
  /// `ignoreHtmlClass: 'class[12]'`, which matches class followed by either a
  /// `1` or a `2`.
  ///
  /// - Note: The default value is `"tex2jax_ignore"`
  /// - SeeAlso: [Document Options](https://docs.mathjax.org/en/latest/options/document.html#document-ignorehtmlclass)
  dynamic public var ignoreHtmlClass: String
  
  /// This is the class name used to mark elements whose contents should be
  /// processed by MathJax.
  ///
  /// This is used to restart processing within tags that have been marked as
  /// ignored via the `ignoreHtmlClass` or to cause a tag that appears in the
  /// `skipHtmlTags` list to be processed rather than skipped.
  ///
  /// - Note: This is a regular expression, and so you need to be sure to quote
  /// any regexp special characters. The pattern is inserted into one that
  /// requires your pattern to match a complete word, so setting
  /// `ignoreHtmlClass: 'class2'` would cause it to match an element with
  /// `class='class1 class2 class3'` but not `class='myclass2'`.
  ///
  /// - Note: You can assign several classes by separating them by the vertical
  /// line character (`|`). For instance, with
  /// `ignoreHtmlClass: 'class1|class2'` any element assigned a class of either
  /// `class1` or `class2` will be skipped. This could also be specified by
  /// `ignoreHtmlClass: 'class[12]'`, which matches class followed by either a
  /// `1` or a `2`.
  ///
  /// - Note: The default value is `"tex2jax_process"`
  /// - SeeAlso: [Document Options](https://docs.mathjax.org/en/latest/options/document.html#document-processhtmlclass)
  dynamic public var processHtmlClass: String
  
  // MARK: Initializers
  
  public init(
    skipHtmlTags: [String] = defaultSkipHtmlTags,
    includeHtmlTags: [String: String] = defaultIncludedHtmlTags,
    ignoreHtmlClass: String = defaultIgnoreHtmlClass,
    processHtmlClass: String = defaultProcessHtmlClass
  ) {
    self.skipHtmlTags = skipHtmlTags
    self.includeHtmlTags = includeHtmlTags
    self.ignoreHtmlClass = ignoreHtmlClass
    self.processHtmlClass = processHtmlClass
  }
  
}
