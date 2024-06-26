# GPL License v3
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

#!perl
#coded by 125KG(Telegram => @Tenorio126KG)
use strict;

#Variables
my ($os_125KG, $adb_125KG, $input_125KG) = (undef, undef, undef);
#X and Y coordinates vary depending on the size of your cell phone screen.
my %coords_125KG = (X => '373', Y => '1073'); # 373 1073 

sub banner
{
   print '
   +-+-+-+-+-+-+-+ +-+-+-+-+-+
   |S|Y|B|I|L|L|A| |G|R|O|U|P|
   +-+-+-+-+-+-+-+ +-+-+-+-+-+
 
   Coded by: 125KG CEO of the Sybilla Group Web3 Services (@Tenorio126KG)
   Use this Referral:https://t.me/hamster_komBat_bot/start?startapp=kentId5751837163

   ** This cannot be sold, Isto não pode ser vendido, Это нельзя продать, 这个不能卖 **
   ' . $/ x 2;

   return 1;
}

sub cls_screen_identifies_sys
{
    # Identifying the operating system clears the screen.
    die 'APPLE user not here. Bye noob' if $^O eq 'darwin';
    $os_125KG = 1 if $^O eq 'linux'; system 'clear';
    $os_125KG = 2 if $^O eq 'MSWin32'; system 'cls';
    #
    return 1;
}

sub hamster_autoclick
{
    #If you are running on Linux, the default PATH is /usr/bin/adb
    $adb_125KG = "/usr/bin/adb" if $os_125KG eq 1;
    $adb_125KG = "C:\\platform-tools\\adb.exe" if $os_125KG eq 2;
    #
    if (-e $adb_125KG){
       print "<Press 1 to continue>\n";
       $input_125KG = <STDIN>;
       chomp ($input_125KG);

       while ($input_125KG eq 1){
          `$adb_125KG shell input tap $coords_125KG{X} $coords_125KG{Y}`;
          print "X:$coords_125KG{X} Y:$coords_125KG{Y}" . $/;
       }
    }
}

if (cls_screen_identifies_sys()){
   if (banner()){
      hamster_autoclick();   
   }
}
