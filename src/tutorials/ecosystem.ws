
function RER_tutorialTryShowEcosystem(): bool {
  if (!theGame.GetInGameConfigWrapper()
      .GetVarValue('RERtutorials', 'RERtutorialEcosystem')) {
    return false;
  }

  if (!RER_openPopup(
    GetLocStringByKey("rer_tutorial_ecosystem_title"),
    GetLocStringByKey("rer_tutorial_ecosystem_body")
  )) {
    return false;
  }

  theGame
    .GetInGameConfigWrapper()
    .SetVarValue('RERtutorials', 'RERtutorialEcosystem', 0);

  theGame.SaveUserSettings();

  return true;
}