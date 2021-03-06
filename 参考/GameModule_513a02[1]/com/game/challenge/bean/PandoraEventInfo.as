﻿package com.game.challenge.bean
{
    import com.game.backpack.bean.*;
    import com.game.utils.*;
    import net.*;

    public class PandoraEventInfo extends Bean
    {
        private var _eventId:long;
        private var _playerName:String;
        private var _playerId:long;
        private var _itemInfo:ItemInfo;
        private var _pandoraInfo:ItemInfo;
        private var _type:int;
        private var _time:long;

        public function PandoraEventInfo()
        {
            return;
        }// end function

        public function set eventId(param1:long) : void
        {
            this._eventId = param1;
            return;
        }// end function

        public function get eventId() : long
        {
            return this._eventId;
        }// end function

        public function set playerName(param1:String) : void
        {
            this._playerName = param1;
            return;
        }// end function

        public function get playerName() : String
        {
            return this._playerName;
        }// end function

        public function set playerId(param1:long) : void
        {
            this._playerId = param1;
            return;
        }// end function

        public function get playerId() : long
        {
            return this._playerId;
        }// end function

        public function set itemInfo(param1:ItemInfo) : void
        {
            this._itemInfo = param1;
            return;
        }// end function

        public function get itemInfo() : ItemInfo
        {
            return this._itemInfo;
        }// end function

        public function set pandoraInfo(param1:ItemInfo) : void
        {
            this._pandoraInfo = param1;
            return;
        }// end function

        public function get pandoraInfo() : ItemInfo
        {
            return this._pandoraInfo;
        }// end function

        public function set type(param1:int) : void
        {
            this._type = param1;
            return;
        }// end function

        public function get type() : int
        {
            return this._type;
        }// end function

        public function set time(param1:long) : void
        {
            this._time = param1;
            return;
        }// end function

        public function get time() : long
        {
            return this._time;
        }// end function

        override public function getId() : int
        {
            return 0;
        }// end function

        override protected function writing() : Boolean
        {
            writeLong(this._eventId);
            writeString(this._playerName);
            writeLong(this._playerId);
            writeBean(this._itemInfo);
            writeBean(this._pandoraInfo);
            writeByte(this._type);
            writeLong(this._time);
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._eventId = readLong();
            this._playerName = readString();
            this._playerId = readLong();
            this._itemInfo = readBean(ItemInfo) as ItemInfo;
            this._pandoraInfo = readBean(ItemInfo) as ItemInfo;
            this._type = readByte();
            this._time = readLong();
            return true;
        }// end function

    }
}
