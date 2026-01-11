return {
  "goolord/alpha-nvim",
  opts = function(_, dashboard)
    local logo = [[
          ::::::::::::::::'             
      .:::::::::::::::::::::::::::::'   
      .::::::::::cccccc:;;;ccc          
      .;;;;;;;;;l000000'  .000          
   .;;lOOO;;;dOOO000000'  .000OOOOOOc   
   .;;l000;;;:cco000000xddc...O00000Okkk
   .;;:oooddddddx000000l,,.   ,,,,,,'   
          0000000000000c'''''''''       
      .;;;kkkkkkkkkkkkkkkkl             
   .;;:::::::,'',::::::::::;;;;;;;;;'   
   ':::::::::,'',::::::,'',:::::::::'   
:::::::::::::,''',,,,,,''',:::::::::::::
000000k:::,,,okko''''''lkkd,,,:::x000000
MMMMMMNkkk'''lxxl''''''lxxl'''xkkXMMMMMM
MMMMMMWKKK''''''''''''''''''''0KKNMMMMMM
      .'''''''''.      .''''''''''      
      .'''''''''.      .'''''''''.      
   .;;;,,,,,,.             ,,,,,,;;;'   
;;;;;;;;;;;;;.             ;;;;;;;;;;;;;
;;;;;;;;;;;;;.             ;;;;;;;;;;;;;]]
    dashboard.section.header.val = vim.split(logo, "\n")
  end,
  config = function()
    require("alpha").setup(require("alpha.themes.dashboard").config)
  end,
}
