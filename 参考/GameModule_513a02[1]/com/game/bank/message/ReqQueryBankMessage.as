﻿package com.game.bank.message
{
    import net.*;

    public class ReqQueryBankMessage extends Message
    {
        private var _type:int;

        public function ReqQueryBankMessage()
        {
            return;
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

        override public function getId() : int
        {
            return 510202;
        }// end function

        override protected function writing() : Boolean
        {
            writeInt(this._type);
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._type = readInt();
            return true;
        }// end function

    }
}
