//
//  AM2CHTML.swift
//  MathJaxSwift
//
//  Copyright (c) 2023 Colin Campbell
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to
//  deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//

import Foundation

extension MathJax {
  
  /// Converts ASCIIMath input strings to SVG.
  ///
  /// - Parameters:
  ///   - input: The input strings containing ASCIIMath.
  ///   - css: Whether the document's CSS should be output.
  ///   - assistiveMml: Whether the include assistive MathML output.
  ///   - conversionOptions: The MathJax conversion options.
  ///   - documentOptions: The math document options.
  ///   - inputOptions: The ASCIIMath input processor options.
  ///   - outputOptions: The SVG output processor options.
  ///   - queue: The queue to execute the conversion on.
  /// - Returns: SVG formatted output.
  public func am2svg(
    _ input: [String],
    css: Bool = false,
    assistiveMml: Bool = false,
    container: Bool = false,
    styles: Bool = true,
    conversionOptions: ConversionOptions = ConversionOptions(),
    documentOptions: DocumentOptions = DocumentOptions(),
    inputOptions: AMInputProcessorOptions = AMInputProcessorOptions(),
    outputOptions: SVGOutputProcessorOptions = SVGOutputProcessorOptions(),
    queue: DispatchQueue = .global()
  ) async throws -> [Response] {
    return try await perform(on: queue) { mathjax in
      try mathjax.am2svg(
        input,
        css: css,
        assistiveMml: assistiveMml,
        container: container,
        styles: styles,
        conversionOptions: conversionOptions,
        documentOptions: documentOptions,
        inputOptions: inputOptions,
        outputOptions: outputOptions
      )
    }
  }
  
  /// Converts ASCIIMath input strings to SVG.
  ///
  /// - Parameters:
  ///   - input: The input strings containing ASCIIMath.
  ///   - css: Whether the document's CSS should be output.
  ///   - assistiveMml: Whether the include assistive MathML output.
  ///   - conversionOptions: The MathJax conversion options.
  ///   - documentOptions: The math document options.
  ///   - inputOptions: The ASCIIMath input processor options.
  ///   - outputOptions: The SVG output processor options.
  /// - Returns: SVG formatted output.
  public func am2svg(
    _ input: [String],
    css: Bool = false,
    assistiveMml: Bool = false,
    container: Bool = false,
    styles: Bool = true,
    conversionOptions: ConversionOptions = ConversionOptions(),
    documentOptions: DocumentOptions = DocumentOptions(),
    inputOptions: AMInputProcessorOptions = AMInputProcessorOptions(),
    outputOptions: SVGOutputProcessorOptions = SVGOutputProcessorOptions()
  ) throws -> [Response] {
    return try callFunctionAndValidate(
      .am2chtml,
      input: input,
      arguments: [
        css,
        container,
        styles,
        assistiveMml,
        conversionOptions,
        documentOptions,
        inputOptions,
        outputOptions
      ])
  }
  
  /// Converts an ASCIIMath input string to SVG.
  ///
  /// - Parameters:
  ///   - input: The input string containing ASCIIMath.
  ///   - css: Whether the document's CSS should be output.
  ///   - assistiveMml: Whether the include assistive MathML output.
  ///   - conversionOptions: The MathJax conversion options.
  ///   - documentOptions: The math document options.
  ///   - inputOptions: The ASCIIMath input processor options.
  ///   - outputOptions: The SVG output processor options.
  ///   - queue: The queue to execute the conversion on.
  /// - Returns: SVG formatted output.
  public func am2svg(
    _ input: String,
    css: Bool = false,
    assistiveMml: Bool = false,
    container: Bool = false,
    styles: Bool = true,
    conversionOptions: ConversionOptions = ConversionOptions(),
    documentOptions: DocumentOptions = DocumentOptions(),
    inputOptions: AMInputProcessorOptions = AMInputProcessorOptions(),
    outputOptions: SVGOutputProcessorOptions = SVGOutputProcessorOptions(),
    queue: DispatchQueue = .global()
  ) async throws -> String {
    return try await perform(on: queue) { mathjax in
      try mathjax.am2svg(
        input,
        css: css,
        assistiveMml: assistiveMml,
        container: container,
        styles: styles,
        conversionOptions: conversionOptions,
        documentOptions: documentOptions,
        inputOptions: inputOptions,
        outputOptions: outputOptions
      )
    }
  }
  
  /// Converts an ASCIIMath input string to SVG.
  ///
  /// - Parameters:
  ///   - input: The input string containing ASCIIMath.
  ///   - css: Whether the document's CSS should be output.
  ///   - assistiveMml: Whether the include assistive MathML output.
  ///   - conversionOptions: The MathJax conversion options.
  ///   - documentOptions: The math document options.
  ///   - inputOptions: The ASCIIMath input processor options.
  ///   - outputOptions: The SVG output processor options.
  /// - Returns: SVG formatted output.
  public func am2svg(
    _ input: String,
    css: Bool = false,
    assistiveMml: Bool = false,
    container: Bool = false,
    styles: Bool = true,
    conversionOptions: ConversionOptions = ConversionOptions(),
    documentOptions: DocumentOptions = DocumentOptions(),
    inputOptions: AMInputProcessorOptions = AMInputProcessorOptions(),
    outputOptions: SVGOutputProcessorOptions = SVGOutputProcessorOptions()
  ) throws -> String {
    return try callFunctionAndValidate(
      .am2svg,
      input: input,
      arguments: [
        css,
        assistiveMml,
        container,
        styles,
        conversionOptions,
        documentOptions,
        inputOptions,
        outputOptions
      ])
  }
  
  /// Converts an ASCIIMath input string to CHTML.
  ///
  /// - Parameters:
  ///   - input: The input string containing ASCIIMath.
  ///   - css: Whether the document's CSS should be output.
  ///   - assistiveMml: Whether the include assistive MathML output.
  ///   - conversionOptions: The MathJax conversion options.
  ///   - documentOptions: The math document options.
  ///   - inputOptions: The ASCIIMath input processor options.
  ///   - outputOptions: The SVG output processor options.
  ///   - error: The error produced by the conversion.
  /// - Returns: SVG formatted output.
  public func am2svg(
    _ input: String,
    css: Bool = false,
    assistiveMml: Bool = false,
    container: Bool = false,
    styles: Bool = true,
    conversionOptions: ConversionOptions = ConversionOptions(),
    documentOptions: DocumentOptions = DocumentOptions(),
    inputOptions: AMInputProcessorOptions = AMInputProcessorOptions(),
    outputOptions: SVGOutputProcessorOptions = SVGOutputProcessorOptions(),
    error: inout Error?
  ) -> String {
    return callFunctionAndValidate(
      .am2svg,
      input: input,
      arguments: [
        css,
        assistiveMml,
        container,
        styles,
        conversionOptions,
        documentOptions,
        inputOptions,
        outputOptions
      ], error: &error)
  }
  
}
