# Monsklab Web

A online platform for us to learn, teach and connect

## :mag: Structure

With the separation of concerns in mind, I've built the application applying a clean architectural pattern. I have experience in most known state management solutions but Riverpod, so was a good opportunity to test... ... ... **Spoiler alert 🙀**: I'm loving it!

```dart
lib
└── src
    └── core // transversal features 
    └── features
        └── home (functional requirements)
            └── data
                index // every folder has an index to avoid import growth
                repository
                providers
            └── domain
                index // 🤨 ... ... ...
                alias // minimal naming: just what adds value
            └── presentation
                controller
                index // yesp! every folder! 🤣
                view
                providers
                state
            index // just naming as index,
        index // is the monks' path for peace. 🙏
    └── ui
        └── widgets
            app_circular_progress_indicator // custom app widget -from there the 'app'-
            app_alias_card // generic app widget
        async_value_ui // a component to manage generally widget async state
        index // your really thought there wouldn't be one here? Poor inocent 😂
        theme
        sizes
    └── utils
        extensions
        in_memory_store // a widget that uses BehaviorSubject to seed and store
        index // ... ... ... ... 🧟‍♀️
        validators
    app
main
```

## :blue_book: Features

### In progress

- Learning platform
  - Private sector accesible with registration
  - Access to discord servers
  - Mark last visited article and where in that article
  - Highlight text in articles
  - Produce synthesis from those highlited sections
  - Useful knowledge database (useful, solved, sections like flutter, dart, riverpod, tests)
  - History
  - Path of study
  - Pomodoro that asks you, guide you threw the learning process
  - Open positions to trainee & junior vacancies for those who finishes
  - Path: Dart course, Learn to learn, Logic
  - Challenges:
    - Quest for find in real world flutter projects, the concept and explained how is used. For instance, a static const etc.
    - Discover the bugs: a kind of treasure search where contestants find errors and proposes how to fix

## :nerd_face: Code Coverage: 100.0%

--

## :point_up: Decisions and Considerations

- **follow [our patterns and conventions](./docs/conventions.md)**
- **be minimal**: ask always if that piece of code ads value
- **update [changelog](./changelog.md) as priority**, letting users know where we are, with a couple of clicks
- **follow our exhaustive lifecycle for PRs with trank based strategy for version control**, to keep code cohesive, promote improvement, and precision
  - **[after_pr.md](./docs/1_after_pr.md)**
  - **[before_commit.md](./docs/2_before_commit.md)**
  - **[before_pr.md](./docs/3_before_pr.md)**
  - **[pull_request_template.md](./docs/pull_request_template.md)**

- **review code with our [standardize PR review process](./docs/review_process.md)**, helping everyone to learn, and know the code's big picture


## :blue_book: Development and design process

Would be nice to follow [this](https://material.io/resources/color/#!/?view.left=0&view.right=0), nor [this](https://fonts.google.com/?category=Display,Handwriting) nor either [this](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design)!

## :muscle: Setup

### **VSCode Settings**

```dart
"editor.codeActionsOnSave": {
 "source.organizeImports": true
},
"editor.defaultFormatter": "Dart-Code-code",
"[dart]": {
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
    "editor.rulers": [
        80
    ],
    "editor.selectionHighlight": false,
    "editor.suggest.snippetsPreventQuickSuggestions": false,
    "editor.suggestSelection": "first",
    "editor.tabCompletion": "onlySnippets",
    "editor.wordBasedSuggestions": true
},
```

### **VSCode Extensions**

- [Awesome Flutter Snippets](https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets):
- [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- [Build Runner](https://marketplace.visualstudio.com/items?itemName=GaetSchwartz.build-runner): to trigger automatically via Watch in bar
- [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments): //TODO //? doubts //* something to highlight (don't forget to use icons in Preferences: File icon theme ;-)
- [Community Material Theme](https://marketplace.visualstudio.com/items?itemName=Equinusocio.vsc-community-material-theme): Highcontrast is the team's selection.
- [Coverage Gutters](https://marketplace.visualstudio.com/items?itemName=ryanluker.vscode-coverage-gutters), LCOV.info and [FlutterCoverage](https://marketplace.visualstudio.com/items?itemName=Flutterando.flutter-coverage)
- [Dart Data Class Generator](https://marketplace.visualstudio.com/items?itemName=hzgood.dart-data-class-generator): for generating methods when not using [Freezed](https://marketplace.visualstudio.com/items?itemName=blaxou.freezed)
- [Lorem ipsum](https://marketplace.visualstudio.com/items?itemName=Tyriar.lorem-ipsum): to generate dumb texts
- [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced) and [Markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint):
    1. cmd k + v to show the preview
    2. use in your markdows to check the process
    3. when clicked on the preview view, the actual markdown will update
    4. undo all marked items discarding the file
- [Flutter Riverpod Snippets](https://marketplace.visualstudio.com/items?itemName=robert-brunhage.flutter-riverpod-snippets)
- [Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock): to assign color to vscode frame and target windows faster. And this is our preferred color palette:
  - 493B2A
  - 593F62
  - A5C4D4

- [Polacode](https://marketplace.visualstudio.com/items?itemName=jeff-hykin.polacode-2019): to make beautiful screenshots
- [PubspecAssist](https://marketplace.visualstudio.com/items?itemName=jeroen-meijer.pubspec-assist): to sort dependencies
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml): to lint pubspec

### **Helpful OS Tools**

- [LICECap](https://www.cockos.com/licecap/) for fast and lightweight .gif screen captures---
### :heart_eyes:  Final but the most importantest: learn to love testing

---
_made with love by [Mau](https://github.com/maurodibert) and [Martin](https://github.com/mal2tin)  for the_ **Monkslab Team** ❤️
