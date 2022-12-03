# 🎯 Conventions

Here are the patterns that we found useful to follow, because they make our code cleaner, our processes easier and our lives happier. If you found that any of these could be improved, please present your proves to us, and after a good discussion, we'll update them!

Made with love by the_ **Monkslab** ❤️

## General

### Naming

- Prefix **custom** or **generic** widgets and app specific classes with _app_: app_card. Keep the name of the file without the app: card.dart.
- Begin with **fetch** methods returning a **Future**
- Begin with **watch** methods returning a **Stream**

### Flutter best practices

- Testing is not about coverage but about risks assessment
- A widget should be generic if could be used outside of a feature; it's custom when it could be used outside of a feature and needs additional functionalities than it's source class_
- Use **stateless** widgets instead of functions
- Pass **ids** instead of objects
- Create **index** to avoid unnecessary imports
- Prefer **map** instead _forEach_
- Always choose [sizes](./lib/src/ui/sizes) instead of SizedBoxes
- Remember to be responsive based on these [breakpoints](./lib/src/ui/breakpoints)
- Has no sense to test models using freezed; just test fromJson

## Specific Implementations

### Bloc

- Always get bloc, don't pass as parameter.

### Beamer
