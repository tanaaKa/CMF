while {true} do
{
  if !((vehicle player) isEqualTo player) then
  {
    /*

    _name = "";
    _vehicle = assignedVehicle player;
    _driver = driver _vehicle;
    _gunner = gunner _vehicle;

    {
      if (_driver isEqualTo _x) then
      {
        _name = _name + " " + (name _x);
      }
      else
      {
        if (_gunner isEqualTo _x) then
        {
          _name = _name + " " + (name _x);
        }
        else
        {
          _name = _name + " " + (name _x);
        };
      };
    } forEach crew _vehicle;

    titleText [_name, "PLAIN DOWN", 0.1];
    */

    titleText
    [
      ((crew _vehicle) apply {name _x}) joinString "   ",
      "PLAIN DOWN",
      0.1
      ];
  };
};
