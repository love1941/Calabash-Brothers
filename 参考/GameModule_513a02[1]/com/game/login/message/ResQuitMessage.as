﻿package com.game.login.message
{
    import net.*;

    public class ResQuitMessage extends Message
    {

        public function ResQuitMessage()
        {
            return;
        }// end function

        override protected function writing() : Boolean
        {
            return true;
        }// end function

        override protected function reading() : Boolean
        {
            return true;
        }// end function

        override public function getId() : int
        {
            return 100107;
        }// end function

    }
}
