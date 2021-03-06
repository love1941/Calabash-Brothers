﻿package com.game.horseweapon.bean
{
    import __AS3__.vec.*;
    import net.*;

    public class OthersHorseWeaponInfo extends Bean
    {
        private var _layer:int;
        private var _curlayer:int;
        private var _skills:Vector.<HorseWeaponSkillInfo>;

        public function OthersHorseWeaponInfo()
        {
            this._skills = new Vector.<HorseWeaponSkillInfo>;
            return;
        }// end function

        override protected function writing() : Boolean
        {
            writeShort(this._layer);
            writeShort(this._curlayer);
            writeShort(this._skills.length);
            var _loc_1:* = 0;
            while (_loc_1 < this._skills.length)
            {
                
                writeBean(this._skills[_loc_1]);
                _loc_1++;
            }
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._layer = readShort();
            this._curlayer = readShort();
            var _loc_1:* = readShort();
            var _loc_2:* = 0;
            while (_loc_2 < _loc_1)
            {
                
                this._skills[_loc_2] = readBean(HorseWeaponSkillInfo) as HorseWeaponSkillInfo;
                _loc_2++;
            }
            return true;
        }// end function

        public function get layer() : int
        {
            return this._layer;
        }// end function

        public function set layer(param1:int) : void
        {
            this._layer = param1;
            return;
        }// end function

        public function get curlayer() : int
        {
            return this._curlayer;
        }// end function

        public function set curlayer(param1:int) : void
        {
            this._curlayer = param1;
            return;
        }// end function

        public function get skills() : Vector.<HorseWeaponSkillInfo>
        {
            return this._skills;
        }// end function

        public function set skills(param1:Vector.<HorseWeaponSkillInfo>) : void
        {
            this._skills = param1;
            return;
        }// end function

    }
}
