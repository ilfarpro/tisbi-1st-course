program tema14task1;
const n=3;
type sotrudnik=record
          fio:string[50];
          marks:array[1..7] of byte;
          sr:real;
        end;
  sotr=file of sotrudnik;
var
  i,j:integer;
  k,y,x:byte;
  answer:char;
  sot:array [1..n] of sotrudnik;
  f1:sotr;
  fpint:sotr;
  name_file:string[50];
begin
  repeat
    i:=0;
    writeln('1 - Ввод информации о студентах.');
    writeln('2 - Вывод информации о студентах.');
    writeln('3 - Подсчет среднего знаения по оценкам.');
    writeln('4 - Сохранить в файле.');
    writeln('5 - Прочитать из файла.');
    writeln('6 - Выход.');
    write('Ваш выбор: ');
    readln(x);
    case x of
     1:begin
       writeln;
       answer:='y';
       while answer='y' do begin
         i:=i+1;
         writeln('Введите информацию о ',i,' сотруднике.');
         writeln('Введите Фамилию.');
         write('   ');
         readln(sot[i].fio);
         write('Сколько оценок нужно ввести? (максимум 7): ');
         readln(k);
         writeln('Введите ',k,' последних оценок через пробел.');
         write('   ');
         for j:=1 to k do begin read(sot[i].marks[j]);
         sot[i].sr:=sot[i].sr+sot[i].marks[j];
         end;
         writeln;
         y:=i;
         write('Добавить ещё одного студента? (y/n): ');
         readln(answer);
         end;
       end;
     2:begin
       writeln;
       for i:=1 to y do begin writeln('Номер сотрудника: ',i,'. Фамилия: ',sot[i].fio,'.');
         WriteLn('Ваши оценки: ');
         for j:=1 to k do write(sot[i].marks[j],' ');
       end;
       writeln;
     end;
     3:begin
       writeln;
       for i:=1 to y do begin writeln('Номер сотрудника: ',i,'. Фамилия: ',sot[i].fio,'.');
         WriteLn('Ваши оценки: ');
         for j:=1 to k do write(sot[i].marks[j],' '); wRITELN;
         WriteLn('Средний балл: ',sot[i].sr/j:3:2);
       end;
       writeln;
     end;
     4:begin
       writeln;
       writeln('Введите название файла в который вы хотите сохранить: ');
       readln(name_file);
       assign(f1,name_file);
       rewrite(f1);
       for i:=1 to y do begin writeln('Номер сотрудника: ',i,'. Фамилия: ',sot[i].fio,'.');
         WriteLn('Ваши оценки: ');
         for j:=1 to k do write(sot[i].marks[j],' '); wRITELN;
         WriteLn('Средний балл: ',sot[i].sr/j:3:2);
       end;
       close(f1);
       writeln;
     end;
     5:begin
       writeln;
       Write('Введите название файла: ');
       ReadLn(name_file);
       assign(f1, name_file);
       Reset(f1);
       While not EOF (f1) do
       begin
       Read(f1, sotrudnik);
       WriteLn(n:4);
       end;
       WriteLn;
       WriteLn;
       Close (f1);
     end;
    end;
  until x=6;
end.
