@now = Date.today
1.times do |user|
  User.create([
    {
      username: 'sunaura',
      email: 'idsunaura@gmail.com',
      firstname: 'sunaura',
      lastname: 'katrali',
      password: '123456',
      confirmed_at: @now

    },
    {
      username: 'naura',
      email: 'idnaura@gmail.com',
      firstname: 'suhendra',
      lastname: 'katrali',
      password: '123456',
      confirmed_at: @now
    },
    {
      username: 'sumuhammad',
      email: 'idsumuhammad@gmail.com',
      firstname: 'sumuhammad',
      lastname: 'katrali',
      password: '123456',
      confirmed_at: @now

    },
    {
      username: 'muhammad',
      email: 'idmuhammad@gmail.com',
      firstname: 'suhendra',
      lastname: 'katrali',
      password: '123456',
      confirmed_at: @now
    },
    {
      username: 'suhe',
      email: 'idsuhe@gmail.com',
      firstname: 'suhendra',
      lastname: 'katrali',
      password: '123456',
      confirmed_at: @now
    }
    ])
end
