﻿package com.game.login.message
{
    import net.*;

    public class ResLoginFailedMessage extends Message
    {
        private var _reason:int;

        public function ResLoginFailedMessage()
        {
            return;
        }// end function

        override protected function writing() : Boolean
        {
            writeByte(this._reason);
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._reason = readByte();
            return true;
        }// end function

        override public function getId() : int
        {
            return 100106;
        }// end function

        public function get reason() : int
        {
            return this._reason;
        }// end function

        public function set reason(param1:int) : void
        {
            this._reason = param1;
            return;
        }// end function

    }
}
