-- The following is a simple buffer encryption/decryption implementation using OpenSSL.
-- Use Ctrl-Shift-E to encrypt and Ctrl-Shift-D to decrypt

-- Get password from user
function get_key (txt)
        local button, inputs = ui.dialogs.secure_inputbox{
                title = 'Camellia',
                informative_text = {
                'Enter '..txt..'cryption key', -- main message text
                'key' -- label
                },
                text = {''} -- empty default key
        }
        return (inputs)
end

-- Decrypt
keys['cD'] = function ()
        local key = get_key('de')
        if key == '' then return end
        textadept.editing.filter_through('openssl enc -d -camellia-256-cbc -base64 -pass "pass:'..key..'"')
end

-- Encrypt
keys['cE'] = function ()
        local key1 = get_key('en')
        if key1 == '' then return end
        local key2 = get_key('(again) en')
        if key1 ~= key2 then
          ui.dialogs.msgbox{
            title = 'Error',
            text = 'Passwords do not match!'
          }
        else
          textadept.editing.filter_through('openssl enc -camellia-256-cbc -base64 -pass "pass:'..key1..'"')
        end
end
