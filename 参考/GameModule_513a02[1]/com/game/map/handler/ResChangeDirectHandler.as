﻿package com.game.map.handler
{
    import com.game.map.message.*;
    import net.*;

    public class ResChangeDirectHandler extends Handler
    {

        public function ResChangeDirectHandler()
        {
            return;
        }// end function

        override public function action() : void
        {
            var _loc_1:* = ResChangeDirectMessage(this.message);
            return;
        }// end function

    }
}
