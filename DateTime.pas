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
  Print('Количество секунд в минуте: 60');
end.