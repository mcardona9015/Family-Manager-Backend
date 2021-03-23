
michael = User.create(username: "michael", password: "123")
album = PhotoAlbum.create(user_id: michael.id, title: "sample album")
