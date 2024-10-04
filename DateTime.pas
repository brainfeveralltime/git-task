begin
  var year := ReadInteger('Введите год:');
  var answer := False;
  if year mod 4 = 0 then
  begin
    if year mod 100 <> 0 then
      answer := True;
    if year mod 400 = 0 then
      answer := True
  end;
  Print($'Год весокосный? {answer}');
  
  var (N1, N2, M1, M2) := ReadInteger4('Введите две даты: день и месяц:');
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
end.