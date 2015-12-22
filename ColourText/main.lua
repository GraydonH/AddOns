SLASH_COLOURTEXT1, SLASH_COLOURTEXT2 = '/ct', '/colourtext';
local function handler(msg, editBox)
local ctchannel = "SAY";
    if msg == 'help' then
        print('Syntax is /ct CHANNEL COLOUR MESSAGE OR /ct CHANNEL #HEXCOLOUR MESSAGE');
		
		else 
		
		if msg.match(msg, "say") then
			msg = msg:gsub('say ', "");
			ctchannel = "SAY";
		elseif msg.match(msg, "guild") then
			msg = msg:gsub('guild ', "");
			ctchannel = "GUILD";
		elseif msg.match(msg, "party") then
			msg = msg:gsub('party ', "");
			ctchannel = "PARTY";
		end
		
		if(msg.match(msg, "red")) then
			msg = msg:gsub('red ', "");
			SendChatMessage("\124cffff0000\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
			
		elseif(msg.match(msg, "blue")) then
			msg = msg:gsub('blue ', "");
			SendChatMessage("\124cff3366ff\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
			
		elseif(msg.match(msg, "yellow")) then
			msg = msg:gsub('yellow ', "");
			SendChatMessage("\124cffffff00\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
			
		elseif(msg.match(msg, "green")) then
			msg = msg:gsub('green ', "");
			SendChatMessage("\124cff00cc00\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
			
		elseif(msg.match(msg, "purple")) then
			msg = msg:gsub('purple ', "");
			SendChatMessage("\124cffcc0099\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);

		elseif(msg.match(msg, "violet")) then
			msg = msg:gsub('violet ', "");
			SendChatMessage("\124cff660066\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
			
			
		elseif(msg.match(msg, "pink")) then
			msg = msg:gsub('pink ', "");
			SendChatMessage("\124cffff3399\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
			
		elseif(msg.match(msg, "orange")) then
			msg = msg:gsub('orange ', "");
			SendChatMessage("\124cffff6600\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
		
		elseif(msg.match(msg, "cyan")) then
			msg = msg:gsub('cyan ', "");
			SendChatMessage("\124cff00ffff\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
			
		elseif(msg.match(msg, "#")) then
			colour = string.match(msg, "#(%w+)");
			msg = msg:gsub("#"..colour, "");
			SendChatMessage("\124cff"..colour.."\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
			print(colour .. " " .. msg);
			
		elseif(msg.match(msg, "test")) then
			SendChatMessage("\124cff000000\124Hgarrfollower:178:5:100:690:130:131:127:0:78:186:201:79\124h"..msg.."\124h\124r", ctchannel);
			print("test");
	end
end
end
SlashCmdList["COLOURTEXT"] = handler; -- Also a valid assignment strategy