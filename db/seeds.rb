p "create Users"
User.create!(
  email: 'user1@gmail.com',
  password: '11111111',
  nickname: 'エマ',
  self_introduction: '音楽と猫と美味しいものが好き！',
  profile_image: open("#{Rails.root}/db/dummy_images/imansyah-muhamad-putera-n4KewLKFOZw-unsplash.jpg")
)
User.create!(
  email: 'user2@gmail.com',
  password: '11111111',
  nickname: 'オリビア',
  self_introduction: 'クリエイターさんと話してみたい。',
  profile_image: open("#{Rails.root}/db/dummy_images/karina-carvalho-fKTKVrNqXQQ-unsplash.jpg")
)
User.create!(
  email: 'user3@gmail.com',
  password: '11111111',
  nickname: 'エヴァ',
  self_introduction: 'プロフィールをご覧いただきありがとうございます。東京でWebマーケティング関連の仕事をしています。',
  profile_image: open("#{Rails.root}/db/dummy_images/manny-moreno-mOTnSQoIOaw-unsplash.jpg")
)
User.create!(
  email: 'user4@gmail.com',
  password: '11111111',
  nickname: 'ノア',
  self_introduction: '東京で美容師をしています。',
  profile_image: open("#{Rails.root}/db/dummy_images/nojan-namdar-dUtizJyby4E-unsplash.jpg")
)
User.create!(
  email: 'user5@gmail.com',
  password: '11111111',
  nickname: 'リアム',
  self_introduction: '普段は公認会計士として働いています',
  profile_image: open("#{Rails.root}/db/dummy_images/sergio-de-paula-c_GmwfHBDzk-unsplash.jpg")
)
User.create!(
  email: 'user6@gmail.com',
  password: '11111111',
  nickname: 'オリバー',
  self_introduction: '週3日くらい1人ラーメンします',
  profile_image: open("#{Rails.root}/db/dummy_images/skylake-studio-6Yt7ROM7KMA-unsplash.jpg")
)