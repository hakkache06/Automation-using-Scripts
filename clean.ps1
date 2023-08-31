
# Remove all items in folder
Remove-Item -Path D:\\Documnets\\Files\\* -Recurse -Verbose

# Get the Recycle bin 
(New-Object -ComObject Shell.Application).NameSpace(0x0a).Items() |
Select-Object name , Size , Path

Clear-RecycleBin