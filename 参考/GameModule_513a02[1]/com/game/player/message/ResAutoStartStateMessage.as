﻿package com.game.player.message
{
    import net.*;

    public class ResAutoStartStateMessage extends Message
    {
        private var _result:int;

        public function ResAutoStartStateMessage()
        {
            return;
        }// end function

        override protected function writing() : Boolean
        {
            writeByte(this._result);
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._result = readByte();
            return true;
        }// end function

        override public function getId() : int
        {
            return 103133;
        }// end function

        public function get result() : int
        {
            return this._result;
        }// end function

        public function set result(param1:int) : void
        {
            this._result = param1;
            return;
        }// end function

    }
}
