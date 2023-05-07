local status, autopep8 = pcall(require, 'autopep8')
if (not status) then return end

autopep8.setup {}
