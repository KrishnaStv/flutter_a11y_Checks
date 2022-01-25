enum SCs {
  AltTextActiveImages,
  AltTextInformativeImages,
  AltTextComplexImages,
  AltTextDecorativeImages,
  AltTextCaptchaImages,
  AltTextAudioVideoImages,
  TranscriptPrerecordedAudio,
  TranscriptPrerecordedVideo,
  InfoRelationShipProgrammaticLabels, //131c
  Headings, //131e
  VisualCues, //133a
  SoundCues, //133b
  ColorAsInformation, //141a
  LinkColorContrast, //141b
  AudioControl, //142
  ColorContrastRegularText, //143a

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

}

extension SCsExtension on SCs {
  String get name {
    switch (this) {
      case SCs.AltTextActiveImages:
        return '1.1.1.a – Alternative Text (Active Images)';
      case SCs.AltTextInformativeImages:
        return '1.1.1.b – Alternative Text (Informative Images)';
      case SCs.AltTextComplexImages:
        return '1.1.1.c – Alternative Text (Complex Images)';
      case SCs.AltTextDecorativeImages:
        return '1.1.1.d – Alternative Text (Decorative Images)';
      case SCs.AltTextCaptchaImages:
        return '1.1.1.g – Alternative Text (CAPTCHA)';
      case SCs.AltTextAudioVideoImages:
        return '1.1.1.h – Alternative Text (Audio or Video)';
      case SCs.TranscriptPrerecordedAudio:
        return '1.2.1.a - Text Transcript \n (Prerecorded Audio Only)';
      case SCs.TranscriptPrerecordedVideo:
        return '1.2.1.b - Text or Audio Description \n (Prerecorded Video)';
      case SCs.InfoRelationShipProgrammaticLabels:
        return '1.3.1.c – Programmatic Labels';
      case SCs.Headings:
        return '1.3.1.e – Headings';
      case SCs.VisualCues:
        return "1.3.3.a – Visual Cues";
      case SCs.SoundCues:
        return '1.3.3.b - SoundCues';
      case SCs.ColorAsInformation:
        return '1.4.1.a – Color as Information';
      case SCs.LinkColorContrast:
        return '1.4.1.b – Link Color Contrast';
      case SCs.AudioControl:
        return '1.4.2.a – Audio control';
      case SCs.ColorContrastRegularText:
        return '1.4.3.a – Color Contrast (regular text)';


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

    }
  }
}

extension SCsExtension_identifier on SCs {
  String get identifier {
    switch (this) {
      case SCs.AltTextActiveImages:
        return '1.1.1.a';
      case SCs.AltTextInformativeImages:
        return '1.1.1.b';
      case SCs.AltTextComplexImages:
        return '1.1.1.c';
      case SCs.AltTextDecorativeImages:
        return '1.1.1.d';
      case SCs.AltTextCaptchaImages:
        return '1.1.1.g';
      case SCs.AltTextAudioVideoImages:
        return '1.1.1.h';
      case SCs.TranscriptPrerecordedAudio:
        return '1.2.1.a';
      case SCs.TranscriptPrerecordedVideo:
        return '1.2.1.b';
      case SCs.InfoRelationShipProgrammaticLabels:
        return '1.3.1.c';
      case SCs.Headings:
        return '1.3.1.e';
      case SCs.VisualCues:
        return '1.3.3.a';
      case SCs.SoundCues:
        return '1.3.3.b';
      case SCs.ColorAsInformation:
        return '1.4.1.a';
      case SCs.LinkColorContrast:
        return '1.4.1.b';
      case SCs.AudioControl:
        return '1.4.2.a';
      case SCs.ColorContrastRegularText:
        return '1.4.3.a';



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

extension SCsExtension_title on SCs {
  String get pageTitle {
    switch (this) {
      case SCs.AltTextActiveImages:
        return 'Text Alts (Active Images)';
      case SCs.AltTextInformativeImages:
        return 'Text Alts (Informative Images)';
      case SCs.AltTextComplexImages:
        return 'Text Alts (Complex Images)';
      case SCs.AltTextDecorativeImages:
        return 'Text Alts (Decorative Images)';
      case SCs.AltTextCaptchaImages:
        return 'Text Alts (CAPTCHA)';
      case SCs.AltTextAudioVideoImages:
        return 'Text Alts (Audio or Video)';
      case SCs.TranscriptPrerecordedAudio:
        return 'Text Transcript (Prerecorded \n Audio Only)';
      case SCs.TranscriptPrerecordedVideo:
        return 'Text or Audio Description \n (Prerecorded Video)';
      case SCs.InfoRelationShipProgrammaticLabels:
        return 'Programmatic Labels';
      case SCs.Headings:
        return 'Headings';
      case SCs.VisualCues:
        return "Visual Cues";
      case SCs.SoundCues:
        return 'Sound Cues';
      case SCs.ColorAsInformation:
        return 'Color as Info';
      case SCs.LinkColorContrast:
        return 'Link Color Contrast';
      case SCs.AudioControl:
        return 'Audio Controls';
      case SCs.ColorContrastRegularText:
        return 'Color Contrast (regular text)';



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

    }
  }
}

final List<SCs> ruleSet = <SCs>[SCs.TextAlternative,
  SCs.Announcements, SCs.ColorContrast, SCs.CustomAccessibilityActions,
  SCs.ElementsAccessible, SCs.SwipeReadingOrder, SCs.HeadingTrait, SCs.StaticTextNotReadable,
SCs.VisibilityWidget, SCs.VisibleTextAndVOTextAreDiff, SCs.ProgrammaticLabelSample];
