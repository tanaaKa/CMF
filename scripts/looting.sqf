player addEventHandler ["InventoryOpened",
{
  _container = _this select 1;
  if ((_container isKindOf "Man") && {!((side group _container) isEqualTo playerSide)}) then
  {
    systemChat "You are not allowed to loot dead enemies.";
    true
  }
  else
  {
    false
  };
}];
