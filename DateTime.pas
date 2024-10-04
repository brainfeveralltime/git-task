function Year (year: integer) : boolean;
begin
  Assert(year > 0);
  if year mod 4 = 0 then
  begin
    Result := False;
    if (year mod 100 <> 0) or (year mod 400 = 0) then
      Result := True;
  end;
end;

begin
  var our_year := ReadInteger('Введите год:');
  Print($'Год весокосный? {Year(our_year)}');
  Println;
  if Year(our_year) then
    Print('Количество дней в году: 366')
  else
    Print('Количество дней в году: 365');
  
  Println;
  
  var (N1, N2, M1, M2) := ReadInteger4('Введите две даты (день и месяц):');
  if M2 > N2 then
    Print('Вторая дата ближе к Новому Году')
  else if M2 = N2 then
  begin
    if N1 > M1 then
      Print('Первая дата ближе к Новому Году')
    else
      Print('Вторая дата ближе к Новому Году');
  end
  else
    Print('Первая дата ближе к Новому Году');
  
  Println;
  
  var (year1, year2) := ReadInteger2('Введите два года:');
  Assert((year1 > 0) and (year2 > 0));
  var day_sum : Integer;
  if year1 > year2 then
    Swap(year1, year2);
  for var i := year1 to year2 do
  begin
    if Year(i) then
      day_sum += 366
    else
      day_sum += 365;
  end;
  Print($'Количество дней между годами: {day_sum}');
end.
