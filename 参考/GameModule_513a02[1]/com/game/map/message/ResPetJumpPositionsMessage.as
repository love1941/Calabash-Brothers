﻿package com.game.map.message
{
    import __AS3__.vec.*;
    import com.game.structs.*;
    import com.game.utils.*;
    import net.*;

    public class ResPetJumpPositionsMessage extends Message
    {
        private var _petId:long;
        private var _state:int;
        private var _time:int;
        private var _positions:Vector.<Position>;

        public function ResPetJumpPositionsMessage()
        {
            this._positions = new Vector.<Position>;
            return;
        }// end function

        override protected function writing() : Boolean
        {
            var _loc_1:* = 0;
            writeLong(this._petId);
            writeByte(this._state);
            writeInt(this._time);
            writeShort(this._positions.length);
            _loc_1 = 0;
            while (_loc_1 < this._positions.length)
            {
                
                writeBean(this._positions[_loc_1]);
                _loc_1++;
            }
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            var _loc_1:* = 0;
            this._petId = readLong();
            this._state = readByte();
            this._time = readInt();
            var _loc_2:* = readShort();
            _loc_1 = 0;
            while (_loc_1 < _loc_2)
            {
                
                this._positions[_loc_1] = readBean(Position) as Position;
                _loc_1++;
            }
            return true;
        }// end function

        override public function getId() : int
        {
            return 101133;
        }// end function

        public function get petId() : long
        {
            return this._petId;
        }// end function

        public function set petId(param1:long) : void
        {
            this._petId = param1;
            return;
        }// end function

        public function get state() : int
        {
            return this._state;
        }// end function

        public function set state(param1:int) : void
        {
            this._state = param1;
            return;
        }// end function

        public function get time() : int
        {
            return this._time;
        }// end function

        public function set time(param1:int) : void
        {
            this._time = param1;
            return;
        }// end function

        public function get positions() : Vector.<Position>
        {
            return this._positions;
        }// end function

        public function set positions(param1:Vector.<Position>) : void
        {
            this._positions = param1;
            return;
        }// end function

    }
}
