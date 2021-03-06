﻿package com.game.guild.message
{
    import com.game.utils.*;
    import net.*;

    public class ReqGuildAddMemberToServerMessage extends Message
    {
        private var _guildId:long;
        private var _userId:long;
        private var _argee:int;

        public function ReqGuildAddMemberToServerMessage()
        {
            return;
        }// end function

        override protected function writing() : Boolean
        {
            writeLong(this._guildId);
            writeLong(this._userId);
            writeByte(this._argee);
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._guildId = readLong();
            this._userId = readLong();
            this._argee = readByte();
            return true;
        }// end function

        override public function getId() : int
        {
            return 121207;
        }// end function

        public function get guildId() : long
        {
            return this._guildId;
        }// end function

        public function set guildId(param1:long) : void
        {
            this._guildId = param1;
            return;
        }// end function

        public function get userId() : long
        {
            return this._userId;
        }// end function

        public function set userId(param1:long) : void
        {
            this._userId = param1;
            return;
        }// end function

        public function get argee() : int
        {
            return this._argee;
        }// end function

        public function set argee(param1:int) : void
        {
            this._argee = param1;
            return;
        }// end function

    }
}
