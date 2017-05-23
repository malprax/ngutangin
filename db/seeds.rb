@now = Date.today
1.times do |user|
  User.create([
    {
      username: 'rizki',
      email: 'rizki@gmail.com',
      firstname: 'rizki',
      lastname: 'muhammad',
      password: '123456',
      confirmed_at: @now

    },
    {
      username: 'suhendra',
      email: 'suhendra@gmail.com',
      firstname: 'suhendra',
      lastname: 'katrali',
      password: '123456',
      confirmed_at: @now
    },
    {
      username: 'adhi',
      email: 'adhi@gmail.com',
      firstname: 'adhi',
      lastname: 'guna',
      password: '123456',
      confirmed_at: @now

    },
    {
      username: 'aulia',
      email: 'aulia@gmail.com',
      firstname: 'aulia',
      lastname: 'sabril',
      password: '123456',
      confirmed_at: @now
    },
    {
      username: 'syaiful',
      email: 'syaiful@gmail.com',
      firstname: 'syaiful',
      lastname: 'sabril',
      password: '123456',
      confirmed_at: @now
    }
    ])
end

@user = User.find(2)
@users_ids = [1,3,4,5]

10.times do |debt|
  @user.utangs.create([
    {
      name: "nama utang",
      amount: 10000,
      due_date: @now,
      status: 'accept',
      debitur_id: @users_ids.sample
      }
    ])
  @user.piutangs.create([
    {
      name: "nama piutang",
      amount: 10000,
      due_date: @now,
      status: 'accept',
      kreditur_id: @users_ids.sample
      }
    ])
end
