import 'package:flutter/material.dart';

class DefaultScaledText extends Text {
  const DefaultScaledText(super.data,
      {super.key,
      super.style,
      super.textAlign,
      super.maxLines,
      super.overflow,
      super.textHeightBehavior})
      : super(
          textScaler: const TextScaler.linear(.95),
        );

  const DefaultScaledText.rich(super.textSpan,
      {super.key, super.style, super.textAlign, super.maxLines, super.overflow})
      : super.rich(
          textScaler: const TextScaler.linear(.95),
        );
}
