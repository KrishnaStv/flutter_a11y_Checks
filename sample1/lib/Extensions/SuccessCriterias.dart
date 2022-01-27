enum SCs {
  AltTextActiveImages,
  AltTextInformativeImages,
  AltTextComplexImages,
  AltTextDecorativeImages,
  AltTextCaptchaImages,
  AltTextAudioVideoImages,
  TranscriptPrerecordedAudio,
  TranscriptPrerecordedVideo,
  TextOrAudioPreRecordedVideoWithDialogue,
  AudioDescriptions,
  InfoRelationShipProgrammaticLabels, //131c
  Headings, //131e
  VisualCues, //133a
  SoundCues, //133b
  ColorAsInformation, //141a
  LinkColorContrast, //141b
  AudioControl, //142
  ColorContrastRegularText, //143a
  ImageOfText, //145a
  NonTextContrastActiveUI, //1411a
  NonTextContrastStateofUI, //1411b
  KayboardNavigation, //211a
  TimeAdjustable, //221a
  PauseStopHide, //222a
  AutomaticUpdating, //222b
  FlashingContent, //232a
  TitlesOfPages, //242a
  DescriptiveHeading, //246a
  DescriptiveLabel, //246b
  LabelInName, //253a
  ContextChangeOnInput, //322a
  ConsistentNavigationPatterns, //323a
  ConsistentIdentification, //324a
  ErrorIdentification,//331b
  VisibleLabels,//332a
  MissingInstructions, //332b
  RequiredFormFields, //332c
  ErrorSuggestions, //333a
  NameRoleValue, //412a
  StatusMessages, //413a




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
      case SCs.TextOrAudioPreRecordedVideoWithDialogue:
        return '1.2.3.a - Text or Audio Descriptions \n (Pre Recorded video -with  \n dialogues)';
      case SCs.AudioDescriptions:
        return '1.2.5.a - Audio Descriptions(Prerecorded)';
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
      case SCs.ImageOfText:
        return '1.4.5.a – Images of Text';
      case SCs.NonTextContrastActiveUI:
        return '1.4.11.a – Non-Text Contrast - Active User \n Interface Components';
      case SCs.NonTextContrastStateofUI:
        return '1.4.11.b – Non-Text Contrast - States of \n User Interface Components';
      case SCs.KayboardNavigation:
        return '2.1.1.a – Keyboard Navigation';
      case SCs.TimeAdjustable:
        return '2.2.1.a – Timing Adjustable';
      case SCs.PauseStopHide:
        return '2.2.2.a – Pause, Stop, or Hide Content';
      case SCs.AutomaticUpdating:
        return '2.2.2.b – Automatically Updating Content';
      case SCs.FlashingContent:
        return '2.3.1.a – Flashing Content';
      case SCs.TitlesOfPages:
        return '2.4.2.a –  Titles on Pages';
      case SCs.DescriptiveHeading:
        return '2.4.6.a – Descriptive Headings';
      case SCs.DescriptiveLabel:
        return '2.4.6.b - Descriptive Labels';
      case SCs.LabelInName:
        return '2.5.3.a - Label in Name';
      case SCs.ContextChangeOnInput:
        return '3.2.2.a – Context Changes (on Input)';
      case SCs.ConsistentNavigationPatterns:
        return '3.2.3.a - Consistent Navigation Patterns';
      case SCs.ConsistentIdentification:
        return '3.2.4.a - Consistent Identification';
      case SCs.ErrorIdentification:
        return '3.3.1.b - Error Identification';
      case SCs.VisibleLabels:
        return '3.3.2.a – Visible Labels';
      case SCs.MissingInstructions:
        return '3.3.2.b - Missing Instructions';
      case SCs.RequiredFormFields:
        return '3.3.2.c - Required Form Fields';
      case SCs.ErrorSuggestions:
        return '3.3.3.a - Error Suggestion';
      case SCs.NameRoleValue:
        return '4.1.2.a – Name, Role, Value';
      case SCs.StatusMessages:
        return '4.1.3.a - Status Messages';




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
      case SCs.TextOrAudioPreRecordedVideoWithDialogue:
        return '1.2.3.a';
      case SCs.AudioDescriptions:
        return '1.2.5.a';
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
      case SCs.ImageOfText:
        return '1.4.5.a';
      case SCs.NonTextContrastActiveUI:
        return '1.4.11.a';
      case SCs.NonTextContrastStateofUI:
        return '1.4.11.b';
      case SCs.KayboardNavigation:
        return '2.1.1.a';
      case SCs.TimeAdjustable:
        return '2.2.1.a';
      case SCs.PauseStopHide:
        return '2.2.2.a';
      case SCs.AutomaticUpdating:
        return '2.2.2.b';
      case SCs.FlashingContent:
        return '2.3.1.a';
      case SCs.TitlesOfPages:
        return '2.4.2.a';
      case SCs.DescriptiveHeading:
        return '2.4.6.a';
      case SCs.DescriptiveLabel:
        return '2.4.6.b';
      case SCs.LabelInName:
        return '2.5.3.a';
      case SCs.ContextChangeOnInput:
        return '3.2.2.a';
      case SCs.ConsistentNavigationPatterns:
        return '3.2.3.a';
      case SCs.ConsistentIdentification:
        return '3.2.4.a';
      case SCs.ErrorIdentification:
        return '3.3.1.b';
      case SCs.VisibleLabels:
        return '3.3.2.a';
      case SCs.MissingInstructions:
        return '3.3.2.b';
      case SCs.RequiredFormFields:
        return '3.3.2.c';
      case SCs.ErrorSuggestions:
        return '3.3.3.a';
      case SCs.NameRoleValue:
        return '4.1.2.a';
      case SCs.StatusMessages:
        return '4.1.3.a';


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
      case SCs.TextOrAudioPreRecordedVideoWithDialogue:
        return 'Text or Audio Description \n (Prerecorded Video)';
      case SCs.AudioDescriptions:
        return 'Audio Descriptions';
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
      case SCs.ImageOfText:
        return 'Images of Text';
      case SCs.NonTextContrastActiveUI:
        return 'Non-Text Contrast - Active \n User Interface Components';
      case SCs.NonTextContrastStateofUI:
        return 'Non-Text Contrast - States of \n User Interface Components';
      case SCs.KayboardNavigation:
        return 'Keyboard Navigation';
      case SCs.TimeAdjustable:
        return 'Adjustable Timeouts';
      case SCs.PauseStopHide:
        return 'Pause, Stop, or Hide Content';
      case SCs.AutomaticUpdating:
        return 'Automatically Updating Content';
      case SCs.FlashingContent:
        return 'Flashing Content';
      case SCs.TitlesOfPages:
        return 'Titles On Screens';
      case SCs.DescriptiveHeading:
        return 'Descriptive Headings';
      case SCs.DescriptiveLabel:
        return 'Descriptive Labels';
      case SCs.LabelInName:
        return 'Label in Name';
      case SCs.ContextChangeOnInput:
        return 'Context Changes (on Input)';
      case SCs.ConsistentNavigationPatterns:
        return 'Consistent Navigation Patterns';
      case SCs.ConsistentIdentification:
        return 'Consistent Identification';
      case SCs.ErrorIdentification:
        return 'Error Identification';
      case SCs.VisibleLabels:
        return 'Visible Labels';
      case SCs.MissingInstructions:
        return 'Missing Instructions';
      case SCs.RequiredFormFields:
        return 'Required Form Fields';
      case SCs.ErrorSuggestions:
        return 'Error Suggestion';
      case SCs.NameRoleValue:
        return 'Name, Role, Value';
      case SCs.StatusMessages:
        return 'Status Messages';




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
