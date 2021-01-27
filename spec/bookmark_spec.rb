require 'bookmark'
require 'database_helpers'

describe Bookmark do 
  describe '.all' do 
    it 'returns all bookmarks' do
      
      bookmark = Bookmark.create(url: "http://www.twitter.com", title: "Twitter")
      persisted_data = persisted_data(id: bookmark.id) 
  
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Twitter'
      expect(bookmark.url).to eq 'http://www.twitter.com'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmarks = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmarks.id)

      expect(bookmarks).to be_a Bookmark
      expect(bookmarks.id).to eq persisted_data['id']
      expect(bookmarks.title).to eq 'Test Bookmark'
      expect(bookmarks.url).to eq 'http://www.testbookmark.com'
    end
  end

  describe '.delete' do
    it 'deletes the given bookmark' do
      bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')

      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq 0
    end
  end
end
