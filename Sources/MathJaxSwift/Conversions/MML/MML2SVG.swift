//
//  MML2SVG.swift
//  MathJaxSwift
//
//  Created by Colin Campbell on 11/29/22.
//

import Foundation

extension MathJax {
  
  /// Converts a MathML input string to SVG.
  ///
  /// - Parameters:
  ///   - input: The input string containing MathML.
  ///   - inline: Process the math as inline or not.
  ///   - containerOptions: The SVG container options.
  ///   - documentOptions: The math document options.
  ///   - inputOptions: The MathML input processor options.
  ///   - outputOptions: The SVG output processor options.
  ///   - queue: The queue to execute the conversion on.
  /// - Returns: SVG formatted output.
  public func mml2svg(
    _ input: String,
    inline: Bool = false,
    containerOptions: SVGContainerOptions = SVGContainerOptions(),
    documentOptions: DocumentOptions = DocumentOptions(),
    inputOptions: MMLInputProcessorOptions = MMLInputProcessorOptions(),
    outputOptions: SVGOutputProcessorOptions = SVGOutputProcessorOptions(),
    queue: DispatchQueue = .global()
  ) async throws -> String {
    return try await perform(on: queue) { mathjax in
      try mathjax.mml2svg(
        input,
        inline: inline,
        containerOptions: containerOptions,
        documentOptions: documentOptions,
        inputOptions: inputOptions,
        outputOptions: outputOptions
      )
    }
  }
  
  /// Converts a MathML input string to SVG.
  ///
  /// - Parameters:
  ///   - input: The input string containing MathML.
  ///   - inline: Process the math as inline or not.
  ///   - containerOptions: The SVG container options.
  ///   - documentOptions: The math document options.
  ///   - inputOptions: The MathML input processor options.
  ///   - outputOptions: The SVG output processor options.
  /// - Returns: SVG formatted output.
  public func mml2svg(
    _ input: String,
    inline: Bool = false,
    containerOptions: SVGContainerOptions = SVGContainerOptions(),
    documentOptions: DocumentOptions = DocumentOptions(),
    inputOptions: MMLInputProcessorOptions = MMLInputProcessorOptions(),
    outputOptions: SVGOutputProcessorOptions = SVGOutputProcessorOptions()
  ) throws -> String {
    return try callFunction(.mml2svg, with: [
      input,
      inline,
      containerOptions,
      documentOptions,
      inputOptions,
      outputOptions
    ])
  }
  
}
