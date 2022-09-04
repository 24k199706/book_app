class Password_Question < ActiveHash::Base
include ActiveHash::Associations
has_many :password_answers

    self.data = [
        {id: 1, name: '生まれ所'}, {id: 2, name: '好きな食べ物'}, {id: 3, name: '初めて旅行した場所'},
        {id: 4, name: '卒業した小学校'}, {id: 5, name: '初めてかったペット'}, {id: 6, name: '好きなスポーツ'},
        {id: 7, name: '尊敬する人'}
        ]
end
