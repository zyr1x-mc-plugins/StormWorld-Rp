Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.IO.Compression.FileSystem
$glyphs=@{
'К'=@('10001','10010','10100','11000','10100','10010','10001');'У'=@('10001','10001','10001','01111','00001','00010','11100');'Р'=@('11110','10001','10001','11110','10000','10000','10000');'А'=@('01110','10001','10001','11111','10001','10001','10001');'Т'=@('11111','00100','00100','00100','00100','00100','00100');'О'=@('01110','10001','10001','10001','10001','10001','01110');'З'=@('11110','00001','00001','01110','00001','00001','11110');'М'=@('10001','11011','10101','10101','10001','10001','10001');'.'=@('00','00','00','00','00','00','10')}
$src=[Drawing.Bitmap]::new('D:\m2\StormWorld-Rp\packobf-tool\diablo.png')
foreach($item in @(@('КУРАТОР','curator'),@('ЗАМ.КУРАТОРА','deputy_curator'))){
$text=$item[0];$width=25;foreach($c in $text.ToCharArray()){$width+=$glyphs[[string]$c][0].Length+1};$b=[Drawing.Bitmap]::new($width,16)
for($y=0;$y -lt 16;$y++){for($x=0;$x -lt $width;$x++){ $sx=if($x -lt 18){$x}elseif($x -ge $width-4){64-($width-$x)}else{19};$p=$src.GetPixel($sx,$y);if($p.A -gt 0){$max=[Math]::Max($p.R,[Math]::Max($p.G,$p.B));$min=[Math]::Min($p.R,[Math]::Min($p.G,$p.B));if(($max-$min) -gt 15){$p=[Drawing.Color]::FromArgb([int]$p.A,[int]($max*0.65),[int]$max,[int]($max*0.08))};$b.SetPixel($x,$y,$p)}}}
$x=22;foreach($c in $text.ToCharArray()){ $rows=$glyphs[[string]$c];for($y=0;$y -lt 7;$y++){for($i=0;$i -lt $rows[0].Length;$i++){if($rows[$y][$i] -eq '1'){$b.SetPixel($x+$i,3+$y,[Drawing.Color]::White)}}};$x+=$rows[0].Length+1};for($iy=0;$iy -lt 16;$iy++){for($ix=0;$ix -lt 15;$ix++){$b.SetPixel($ix,$iy,[Drawing.Color]::Transparent)}}
$outline=[Drawing.Color]::FromArgb(255,169,240,32);$inside=[Drawing.Color]::FromArgb(255,37,65,12)
for($iy=1;$iy -le 12;$iy++){ $inset=if($iy -le 8){0}else{$iy-8};$left=2+$inset;$right=12-$inset;for($ix=$left;$ix -le $right;$ix++){ $col=if($iy -eq 1 -or $ix -eq $left -or $ix -eq $right -or $iy -eq 12){$outline}else{$inside};$b.SetPixel($ix,$iy,$col)}}
$k=@('101','110','100','110','101');for($iy=0;$iy -lt 5;$iy++){for($ix=0;$ix -lt 3;$ix++){if($k[$iy][$ix] -eq '1'){$b.SetPixel(6+$ix,4+$iy,[Drawing.Color]::White)}}}
if($item[1] -eq 'deputy_curator'){for($ix=4;$ix -le 10;$ix++){$b.SetPixel($ix,2,[Drawing.Color]::Silver)}}
for($yy=0;$yy -lt 16;$yy++){for($xx=$width-2;$xx -lt $width;$xx++){$b.SetPixel($xx,$yy,[Drawing.Color]::Transparent)}}; $b.Save(('D:\m2\StormWorld-Rp\'+$item[1]+'.png'));$b.Dispose()
};$src.Dispose()
Copy-Item 'D:\m2\StormWorld-Rp\stormworld-rp-fixed-source.zip' 'D:\m2\StormWorld-Rp\stormworld-rp-lime-source.zip' -Force
$z=[IO.Compression.ZipFile]::Open('D:\m2\StormWorld-Rp\stormworld-rp-lime-source.zip',[IO.Compression.ZipArchiveMode]::Update);$e=$z.GetEntry('assets/minecraft/font/default.json');$r=[IO.StreamReader]::new($e.Open());$j=$r.ReadToEnd()|ConvertFrom-Json;$r.Dispose();$idx=0;foreach($name in @('curator','deputy_curator')){$j.providers+=[pscustomobject]@{type='bitmap';file="stormworld:font/$name.png";ascent=8;height=10;chars=@([string][char](0xE278+$idx))};[IO.Compression.ZipFileExtensions]::CreateEntryFromFile($z,"D:\m2\StormWorld-Rp\$name.png","assets/stormworld/textures/font/$name.png")|Out-Null;$idx++};$e.Delete();$e=$z.CreateEntry('assets/minecraft/font/default.json');$w=[IO.StreamWriter]::new($e.Open(),[Text.UTF8Encoding]::new($false));$w.Write(($j|ConvertTo-Json -Depth 80 -Compress));$w.Dispose();$z.Dispose()
& 'D:\m2\StormWorld-Rp\packobf-tool\packobf_cli.exe' -i 'D:\m2\StormWorld-Rp\stormworld-rp-lime-source.zip' -o 'D:\m2\StormWorld-Rp\stormworld-rp-lime-protected.zip' --block-unzipping --corrupt-png-files --shader-compression none --compression normal *> 'D:\m2\StormWorld-Rp\packobf-tool\lime.log'
Get-Content 'D:\m2\StormWorld-Rp\packobf-tool\lime.log' -Tail 4
Get-FileHash 'D:\m2\StormWorld-Rp\stormworld-rp-lime-protected.zip' -Algorithm SHA1




