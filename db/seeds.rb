Admin.create(:email => "haotv03@gmail.com", :password => "hoanganhq12",
  :password_confirmation => "hoanganhq12")

Account.create(email: "haotvph04791@fpt.edu.vn", name: "Hảo Trương",
  password: "hoanganh12", password_confirmation: "hoanganhq12",
  confirmed_at: Time.zone.now)

Account.create(email: "admin@haotruong.dev", name: "Admin", role: 1,
  password: "hoanganh12", password_confirmation: "hoanganhq12",
  confirmed_at: Time.zone.now)
