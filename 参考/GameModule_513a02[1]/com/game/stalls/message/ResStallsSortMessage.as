﻿package com.game.stalls.message
{
    import com.game.stalls.bean.*;
    import net.*;

    public class ResStallsSortMessage extends Message
    {
        private var _stallsbrieflist:StallsBriefList;

        public function ResStallsSortMessage()
        {
            return;
        }// end function

        override protected function writing() : Boolean
        {
            writeBean(this._stallsbrieflist);
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            this._stallsbrieflist = readBean(StallsBriefList) as StallsBriefList;
            return true;
        }// end function

        override public function getId() : int
        {
            return 123103;
        }// end function

        public function get stallsbrieflist() : StallsBriefList
        {
            return this._stallsbrieflist;
        }// end function

        public function set stallsbrieflist(param1:StallsBriefList) : void
        {
            this._stallsbrieflist = param1;
            return;
        }// end function

    }
}
