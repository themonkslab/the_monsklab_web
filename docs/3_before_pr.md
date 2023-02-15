# 🚀  Before PR

_Made with love by the_ **Monkslab** ❤️

## Resolve

- [ ] 1. Run all the test: `flutter test --coverage` and remove unnecessary files with: lcov --remove coverage/lcov.info '**/*.g.dart' '**/*.freezed.dart' -o coverage/lcov.info.
- [ ] 2. Test on the required platforms (iOS, android, web, windows, mac).
- [ ] 3. Solve conflicts - relay on team mates when necessary.
- [ ] 6. Format: `flutter format .`.
- [ ] 7. Analyze: `flutter analyze .`
    _If you find problems..._
  - [ ] a. Solve conflicts with `dart fix --apply` (dart fix --dry-run if you want to see a list of possible conflicts to solve, first).
  - [ ] b. Solve manually.
  - [ ] c. Check with `flutter analyze .` again to wrap up.
- [ ] 8. Leave the project with 0 problems, besides the current TODOs.
- [ ] 9. Check if your code is aligned with existing [conventions](conventions.md).
- [ ] 10. Commit your code so it's pristine before merge with parent branch
- [ ] 11. Do `git pull develop` or source branch.
- [ ] 12. Merge into your branch: `git merge develop`.
- [ ] 13. Repeat from step 1 until code is cuter than eating pancakes on a rainy day 🌯.

## Final Stage

- [ ] 1. Take the screen record you did, save it like this: numberOfTicket_nameOfFeature. Ex: 17_create_github_api.mp4.
- [ ] 2. Use [before commit](./2_before_commit.md) to name this last commit.
- [ ] 3. Auto-review PR.
- [ ] 4. This code is 🥷 level. **PUSH**.
- [ ] 5. If you have based this branch on a different from develop, change the base branch to that one to make PR easier to review.

## Merge

- [ ] 1. After receiving the expected aprovals, if you have changed the base branch from develop to another to make this PR easier to review, change it again to develop.
- [ ] 2. Merge.
- [ ] 3. Delete branch.
- [ ] 4. Update your story.
