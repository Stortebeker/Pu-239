<?php

declare(strict_types = 1);

$lang = [
    //FORMATS
    'formats_download_title' => 'Downloaded Files',
    'formats_guide_heading' => "A Handy Guide to Using the Files You've Downloaded",
    'formats_guide_body' => "Hey guys, here's some info about common files that you can download from the internet,
and a little bit about using these files for their intended purposes. If you're stuck
on what exactly a file is or how to open it maybe your answer lies ahead. If you dont'
find your answer here, then please post in the 'Forum'. So without further adieu lets
get the show on the road!<br>",
    'formats_compression_title' => 'Compression Files',
    'formats_compression_body' => "<b>.rar .zip .ace .r01 .001</b><br>
<br>
These extensions are quite common and mean that your file(s) are compressed into an 'archive'.<br>
This is just a way of making the files more compact and easier to download.<br>
<br>
To open any of those archives listed above you can use <a href='" . url_proxy('https://www.rarsoft.com/download.htm') . "'>WinRAR</a> (Make sure you have the latest version) or <a href='" . url_proxy('https://www.powerarchiver.com/download/') . "'>PowerArchiver</a>.<br>
<br>
If those progams aren't working for you and you have a .zip file you can try 
<a href='" . url_proxy('https://www.winzip.com/download.htm') . "'>WinZip</a> (Trial version).<br>
<br>
If the two first mentioned programs aren't working for you and you have a .ace or .001
file you can try <a href='" . url_proxy('https://www.winace.com/') . "'>Winace</a> (Trial version).<br>
<br>
<br> 
<b>.cbr .cbz</b><br>
<br>
These are usually comic books in an archive format. a .cbr file is actually the same
thing as a .rar file and a .cbz file is the same as a .zip file. However, often when
opening them with WinRAR or WinZip it will disorder your pages. To display these
archives properly it's often best to use <a href='" . url_proxy('https://www.geocities.com/davidayton/CDisplay') . "'>CDisplay</a>.<br>
<br>",
    'formats_multimedia_title' => 'Multimedia Files',
    'formats_multimedia_body' => "<b>.avi .mpg. .mpeg .divx .xvid .wmv</b><br>
<br>
These files are usually movies or TVshows, or a host of other types of media. They can
be viewed using various media players, but I suggest using
<a href='" . url_proxy('https://www.inmatrix.com/files/zoomplayer_download.shtml') . "'>Zoomplayer</a>,
<a href='" . url_proxy('https://www.bsplayer.org/') . "'>BSPlayer</a>, <a href='" . url_proxy('https://www.videolan.org/vlc/') . "'>VLC media player</a>
 or <a href='" . url_proxy('https://www.microsoft.com/windows/windowsmedia/default.aspx') . "'>Windows Media Player</a>. Also, you'll need to make sure you have
the right codecs to play each individual file. Codecs are a tricky business sometimes so to help
you out with your file and what exact codecs it needs try using <a href='" . url_proxy('https://www.headbands.com/gspot/download.html') . "'>GSpot</a>. It tells you what codecs you need. Then just look on the net to find
them, below are some common codecs and their download links for quick reference:<br>
<br>
* <a href='" . url_proxy('https://sourceforge.net/project/showfiles.php?group_id=53761&amp;release_id=95213') . "'>ffdshow</a> (Recommended! (plays many formats: XviD, DivX, 3ivX, mpeg-4))<br>
* <a href='" . url_proxy('https://nic.dnsalias.com/xvid.html') . "'>XviD codec</a><br>
* <a href='" . url_proxy('https://www.divx.com/divx/') . "'>DivX codec</a><br>
* <a href='" . url_proxy('https://sourceforge.net/projects/ac3filter/files/ac3filter/ac3filter_1_62b/') . "'>ac3filter</a> (for AC3 soundtracks, aka '5.1')<br>
* <a href='" . url_proxy('https://tobias.everwicked.com/oggds.htm') . "'>Ogg media codec</a> (for .OGM files)<br>
<br>
Can't find what you're looking for? Check out these sites...<br>
<br>
* <a href='" . url_proxy('https://www.divx-digest.com/') . "'>DivX-Digest</a><br>
* <a href='" . url_proxy('https://www.digital-digest.com/') . "'>Digital-Digest</a><br>
* <a href='" . url_proxy('https://www.doom9.org/') . "'>Doom9</a><br>
* <a href='" . url_proxy('https://www.dvdrhelp.com/') . "'>DVD-R Help</a><br>
<br>
<br>
<b>.mov</b><br>
<br>
These are <a href='" . url_proxy('https://www.apple.com/quicktime/') . "'>QuickTime</a> files. Hopefully you
won't have to open these as I hate quicktime, but if you do you can
<a href='" . url_proxy('https://www.apple.com/quicktime/download/') . "'>get it here</a>.
There are however alternatives to the original program,
Check out <a href='" . url_proxy('https://home.hccnet.nl/h.edskes/finalbuilds.htm') . "'>QuickTime Alternative</a>.<br>
<br>
<br>
<b>.ra .rm .ram</b><br>
<br>
These are <a href='" . url_proxy('https://www.real.com') . "'>RealPlayer</a> files. RealPlayer IMO is the
devils work. It installs lord knows what on your system and never really goes away when
you want to uninstall it. Still if you insists you can get the player
<a href='" . url_proxy('https://service.real.com/downloads.html') . "'>here</a>.
There are however alternatives to the original program,
check out <a href='" . url_proxy('https://home.hccnet.nl/h.edskes/finalbuilds.htm') . "'>Real Alternative</a>.<br>
<br>
<br>
<b>vcd/svcd</b><br>
<br>
These can be a pain on some peoples setups, but more so, on your stand-alone DVD player.
For all your vcd needs check out <a href='" . url_proxy('https://www.dvdrhelp.com') . "'>www.dvdrhelp.com</a>.
These guys know their stuff, and can help you with all kinds of media related questions.<br>
<br>
<br>
<b>.mp3 .mp2</b><br>
<br>
Usually music files. Play them with <a href='" . url_proxy('https://www.winamp.com/') . "'>WinAmp</a>.<br>
<br>
<br>
<b>.ogm .ogg</b><br>
<br>
Ogg Vorbis media files. You can find out more about them and download applications
<a href='" . url_proxy('https://www.vorbis.com/download.psp') . "'>here</a>.
This filetype is another music file format, but can be used for various media. You will
probably want to download the <a href='" . url_proxy('https://tobias.everwicked.com/oggds.htm') . "'>
DirectShow Ogg filter</a> to play back OGM files. Any new version of
<a href='" . url_proxy('https://www.winamp.com') . "'>WinAmp</a> will also do.<br>
<br>",
    'formats_image_title' => 'CD Image Files',
    'formats_image_body' => "<b>.bin and .cue</b><br>
<br>
These are your standard images of a CD, and are used quite alot these days. To open them
you have a couple options. You can burn them using <a href='" . url_proxy('https://www.ahead.de') . "'>Nero</a>
(Trial Version) or <a href='" . url_proxy('https://www.alcohol-software.com/') . "'>Alcohol 120%</a>,
but this proves to be soooooooo problematic for a lot of people. You should also consult
this tutorial for burning images with various software programs You can also use
<a href='" . url_proxy('https://www.daemon-tools.cc/portal/portal.php') . "'>Daemon Tools</a>, which lets you
mount the image to a 'virtual cd-rom', so basically it tricks your computer into thinking
that you have another cd-rom and that you're putting a cd with your image file on it into
this virtual cd-rom, it's great cuz you'll never make a bad cd again, Alcohol 120% also
sports a virtual cd-rom feature. Finally, if you're still struggling to access the files
contained within any given image file you can use <a href='" . url_proxy('https://cdmage.cjb.net/') . "'>CDMage</a>
to extract the files and then burn them, or just access them from your hard drive. You can
also use <a href='" . url_proxy('https://www.vcdgear.com/') . "'>VCDGear</a> to extract the mpeg contents of a
SVCD or VCD image file such as bin/cue.<br>
<br>
<br>
<b>.iso</b><br>
<br>
Another type of image file that follows similar rules as .bin and .cue, only you extract
or create them using <a href='" . url_proxy('https://www.winiso.com') . "'>WinISO</a> or
<a href='" . url_proxy('https://ww.smart-projects.net/isobuster/') . "'>ISOBuster.</a> Sometimes converting a
problematic .bin and .cue file to an .iso can help you burn it to a cd.<br>
<br>
<br>
<b>.ccd .img .sub</b><br>
<br>
All these files go together and are in the <a href='" . url_proxy('https://www.elby.ch/english/products/clone_cd/index.html') . "'> CloneCD</a> format. CloneCD is like most other CD-Burning programs,
see the .bin and .cue section if you're having problems with these files.<br>
<br>",
    'formats_other_title' => 'Other Files',
    'formats_other_body' => "<b>.txt .doc</b><br>
<br>
These are text files. .txt files can be opened with notepad or watever you default text
editor happens to be, and .doc are opened with Microsoft Word.<br>
<br>
<br>
<b>.nfo</b><br>
<br>
These contain information about the file you just downloaded, and it's HIGHLY recommended
that you read these! They are plain text files, often with ascii-art. You can open them
with Notepad, Wordpad, <a href='" . url_proxy('https://www.damn.to/software/nfoviewer.html') . "'>DAMN NFO Viewer</a>
or <a href='" . url_proxy('https://www.ultraedit.com/') . "'>UltraEdit</a>.<br>
<br>
<br>
<b>.pdf</b><br>
<br>
Opened with <a href='" . url_proxy('https://www.adobe.com/products/acrobat/main.html') . "'>Adobe Acrobat Reader</a>.<br>
<br>
<br>
<b>.jpg .gif .tga .psd</b><br>
<br>
Basic image files. These files generally contain pictures, and can be opened with Adobe
Photoshop or whatever your default image viewer is.<br>
<br>
<br>
<b>.sfv</b><br>
<br>
Checks to make sure that your multi-volume archives are complete. This just lets you know
if you've downloaded something complete or not. (This is not really an issue when DL:ing
via torrent.) You can open/activate these files with <a href='" . url_proxy('https://www.traction-software.co.uk/SFVChecker/') . "'>
SFVChecker</a> (Trial version) or <a href='" . url_proxy('https://www.big-o-software.com/products/hksfv/') . "'>hkSFV</a> for example.<br>
<br>
<br>
<p><b>.par</b></p>
This is a parity file, and is often used when downloading from newsgroups. These files can
fill in gaps when you're downloading a multi-volume archive and get corrupted or missing parts.
Open them with <a href='" . url_proxy('https://www.pbclements.co.uk/QuickPar/') . "'>QuickPar</a>.
<br>",
    'formats_questions' => "If you have any suggestion/changes <a href='staff.php'><b>PM</b></a> one of the Admins/SysOp!<br>
<br>
This file was originally written by hussdiesel at filesoup, then edited by Rhomboid and re-edited by us.<br>",
];
