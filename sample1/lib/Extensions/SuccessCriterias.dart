enum SCs {
  TextAlternative,
  Announcements,
  ColorContrast,
  CustomAccessibilityActions,
  ElementsAccessible,
  SwipeReadingOrder,
  HeadingTrait,
  StaticTextNotReadable,
  VisibilityWidget,
  VisibleTextAndVOTextAreDiff,
  ProgrammaticLabelSample,
  VisualCues
}

extension SCsExtension on SCs {
  String get name {
    switch (this) {
      case SCs.TextAlternative:
        return "1.1.1.Text Alternative";
      case SCs.Announcements:
        return "Announcements";
      case SCs.ColorContrast:
        return "ColorContrast";
      case SCs.CustomAccessibilityActions:
        return "Custom Accessibility Actions";
      case SCs.ElementsAccessible:
        return "Elements Accessible";
      case SCs.SwipeReadingOrder:
        return "Right Swipe Reading Order";
      case SCs.HeadingTrait:
        return "Read as Heading";
      case SCs.StaticTextNotReadable:
        return "Static or Informative Text NotReadable";
      case SCs.VisibilityWidget:
        return "Visibility Widget to hide";
      case SCs.VisibleTextAndVOTextAreDiff:
        return "Visible Text And VO Texts are Different";
      case SCs.ProgrammaticLabelSample:
        return "Programmatic Label Sample";
      case SCs.VisualCues:
        return "Visual Cues";
    }
  }
}

final List<SCs> ruleSet = <SCs>[SCs.TextAlternative,
  SCs.Announcements, SCs.ColorContrast, SCs.CustomAccessibilityActions,
  SCs.ElementsAccessible, SCs.SwipeReadingOrder, SCs.HeadingTrait, SCs.StaticTextNotReadable,
SCs.VisibilityWidget, SCs.VisibleTextAndVOTextAreDiff, SCs.ProgrammaticLabelSample];
