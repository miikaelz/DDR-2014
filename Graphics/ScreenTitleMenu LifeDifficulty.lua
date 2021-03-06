return Def.ActorFrame {
--[[ 	LoadActor(THEME:GetPathG("ScreenTitleMenu","PreferenceFrame")) .. {
		OnCommand=function(self)
			if GetLifeDifficulty() < 3 then
				(cmd(diffuseshift;effectcolor1,Color("Blue");effectcolor2,ColorDarkTone(Color("Blue"));effectperiod,1.25))(self);
			elseif GetLifeDifficulty() > 3 then
				(cmd(diffuseshift;effectcolor1,Color("Red");effectcolor2,ColorDarkTone(Color("Red"));effectperiod,1.25))(self);
			else
				(cmd(diffuse,Color("Orange");diffusetopedge,Color("Yellow")))(self);
			end;
		end;
	}; --]]
-- 	LoadActor(THEME:GetPathG("OptionRowExit","frame"));
	LoadActor(THEME:GetPathG("_icon","Health")) .. {
		InitCommand=cmd(x,-60;shadowlength,1);
	};
	LoadFont("Common Normal") .. {
		Text=GetLifeDifficulty();
		AltText="";
		InitCommand=cmd(x,-72+28;horizalign,left;zoom,0.5);
		OnCommand=cmd(shadowlength,1);
		BeginCommand=function(self)
			self:settextf( Screen.String("LifeDifficulty"), "" );
		end
	};
	LoadFont("Common Normal") .. {
		Text=GetLifeDifficulty();
		AltText="";
		InitCommand=cmd(x,72*0.75+8;zoom,0.875);
		OnCommand=cmd(shadowlength,1;skewx,-0.125);
	};
};