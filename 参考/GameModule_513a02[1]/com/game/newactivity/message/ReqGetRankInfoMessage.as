﻿package com.game.newactivity.message
{
    import net.*;

    public class ReqGetRankInfoMessage extends Message
    {
        private var _activityId:int;

        public function ReqGetRankInfoMessage()
        {
            return;
        }// end function

        public function set activityId(param1:int) : void
        {
            this._activityId = param1;
            return;
        }// end function

        public function get activityId() : int
        {
            return this._activityId;
        }// end function

        override public function getId() : int
        {
            return 511206;
        }// end function

        override protected function writing() : Boolean
        {
            writeInt(this._activityId);
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._activityId = readInt();
            return true;
        }// end function

    }
}
