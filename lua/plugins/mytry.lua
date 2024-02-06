vim.api.nvim_create_user_command('Test', 'echo "It works!"', {})

--[[ vim.api.nvim_create_user_command('Upper',
    function(opts)
        print(string.upper(opts.fargs[1]))
    end,
    { nargs=1}
) ]]

--[[ vim.api.nvim_create_user_command('Upper',
  function(opts)
    print(string.upper(opts.fargs[1]))
  end,
  { nargs = 1,
    complete = function(ArgLead, CmdLine, CursorPos)
      -- return completion candidates as a list-like table
      return { "foo", "bar", "baz" }
    end,
}) ]]

vim.api.nvim_buf_create_user_command(0, 'Upper',
  function(opts)
    print(string.upper(opts.fargs[1]))
  end,
  { nargs = 1 })

function GetFileName(url)
  return url:match("^.+/(.+)$")
end

function GetFileExtension(url)
  return url:match("^.+(%..+)$")
end

vim.api.nvim_create_user_command('CurrentBuf',
  function(opts)
    fn = vim.api.nvim_buf_get_name(0)
    ext = GetFileExtension(fn)
    print(ext)
    print(GetFileName(fn))
    print(vim.fn.expand('%:e'))
  end, {})
