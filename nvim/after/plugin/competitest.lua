local commands = require('competitest.commands')
require('competitest').setup{

    testcases_use_single_file = true,
    received_problems_path = function(task, file_extension)
        local hyphen = string.find(task.group, " - ")
        local judge, contest
        if not hyphen then
            judge = task.group
            contest = "unknown_contest"
        else
            judge = string.sub(task.group, 1, hyphen - 1)
            contest = string.sub(task.group, hyphen + 3)
        end
        return string.format("%s/Desktop/Programing/dsa-cp/%s/%s/%s.%s", vim.loop.os_homedir(), judge, contest, task.name, file_extension)
    end
}

--keymaps 
vim.keymap.set('n' , '<leader>atc' , function() commands.edit_testcase(true) end)
vim.keymap.set('n' , '<leader>etc' , function() commands.edit_testcase(num) end)
vim.keymap.set('n' , '<leader>dtc' , function() commands.delete_testcase() end)
vim.keymap.set('n' , '<leader>rcp' , function() commands.receive("problem") end) 
vim.keymap.set('n' , '<leader>rcc' , function() commands.receive("contest") end) 
vim.keymap.set('n' , '<leader>R' , ':CompetiTest run<CR>')
vim.keymap.set('n' , '<leader>RNC' , ':CompetiTest run_no_compile<CR>')
vim.keymap.set('n' , '<leader>sui' , ':CompetiTest show_ui<CR>')


