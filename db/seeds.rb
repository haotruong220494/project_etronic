Admin.create(:email => "haotv03@gmail.com", :password => "hoanganhq12",
  :password_confirmation => "hoanganhq12")

Account.create(email: "haotv02@haotruong.dev", name: "Hảo Trương dev", slug: "hao-truong-dev",
  password: "hoanganhq12", password_confirmation: "hoanganhq12",
  confirmed_at: Time.zone.now)

Account.create(email: "admin@haotruong.dev", name: "Admin", role: 1,
  password: "hoanganhq12", password_confirmation: "hoanganhq12",
  confirmed_at: Time.zone.now)
