﻿package com.game.horseweapon.message
{
    import com.game.horseweapon.bean.*;
    import com.game.utils.*;
    import net.*;

    public class ResHorseWeaponInfoMessage extends Message
    {
        private var _playerid:long;
        private var _info:HorseWeaponInfo;

        public function ResHorseWeaponInfoMessage()
        {
            return;
        }// end function

        override protected function writing() : Boolean
        {
            writeLong(this._playerid);
            writeBean(this._info);
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._playerid = readLong();
            this._info = readBean(HorseWeaponInfo) as HorseWeaponInfo;
            return true;
        }// end function

        override public function getId() : int
        {
            return 155101;
        }// end function

        public function get playerid() : long
        {
            return this._playerid;
        }// end function

        public function set playerid(param1:long) : void
        {
            this._playerid = param1;
            return;
        }// end function

        public function get info() : HorseWeaponInfo
        {
            return this._info;
        }// end function

        public function set info(param1:HorseWeaponInfo) : void
        {
            this._info = param1;
            return;
        }// end function

    }
}
