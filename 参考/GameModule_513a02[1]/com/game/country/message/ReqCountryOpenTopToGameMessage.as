﻿package com.game.country.message
{
    import net.*;

    public class ReqCountryOpenTopToGameMessage extends Message
    {

        public function ReqCountryOpenTopToGameMessage()
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
            return 146207;
        }// end function

    }
}
