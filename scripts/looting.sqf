player addEventHandler ["InventoryOpened",
{
  _container = _this select 1;
  if ((_container isKindOf "Man") && {!((side _container) isEqualTo playerSide)}) then
  {
    systemChat "You are not allowed to loot dead soldiers.";
    true
  }
  else
  {
    false
  };
}];
