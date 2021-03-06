﻿package com.game.backpack.message
{
    import net.*;

    public class ReqCellTimeQueryMessage extends Message
    {
        private var _cellId:int;

        public function ReqCellTimeQueryMessage()
        {
            return;
        }// end function

        override protected function writing() : Boolean
        {
            writeInt(this._cellId);
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._cellId = readInt();
            return true;
        }// end function

        override public function getId() : int
        {
            return 104208;
        }// end function

        public function get cellId() : int
        {
            return this._cellId;
        }// end function

        public function set cellId(param1:int) : void
        {
            this._cellId = param1;
            return;
        }// end function

    }
}
