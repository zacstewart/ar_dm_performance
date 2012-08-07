# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

IPSUM = %w{ Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Nam non lectus ligula, at imperdiet dolor. Quisque auctor
            pharetra magna quis venenatis. Vestibulum ac scelerisque
            nibh. Nam id lorem dui. Donec rhoncus dui molestie arcu
            consectetur sit amet tincidunt erat mattis. Donec
            scelerisque eros ut diam dapibus bibendum. Aenean a
            nulla nec libero accumsan imperdiet. Suspendisse et dolor
            nunc, at feugiat nulla. Nam at lorem arcu. Nulla gravida
            tellus non dolor elementum facilisis. Cras elementum rhoncus
            risus. Aenean eu sapien eget diam fringilla tincidunt. Aliquam
            accumsan, orci a tristique vehicula, odio nunc molestie lacus,
            elementum dignissim erat felis at eros. Sed placerat tempor
            magna, non tincidunt metus porttitor a. Curabitur gravida
            ullamcorper ultricies. Maecenas fringilla vehicula semper.
            Morbi egestas sem non nulla blandit tincidunt. Nulla mi nisl,
            ultrices at interdum a, aliquet vitae lorem. Lorem ipsum dolor
            sit amet, consectetur adipiscing elit. Vivamus vel nulla elit,
            vel tristique ipsum. Aenean condimentum vehicula urna, semper
            tempus tellus aliquet sed.  Vivamus lobortis elit ac mauris
            hendrerit laoreet. Pellentesque sed dolor eget massa commodo
            blandit et at ligula. Morbi rhoncus neque nec ligula sodales
            eget tempor dolor dignissim. Donec eu leo id tellus blandit
            suscipit. Curabitur vitae mi sit amet metus aliquet cursus
            ac eget odio. Curabitur vitae consectetur diam. Mauris et
            felis orci. Quisque pellentesque, nulla eu sollicitudin
            ultricies, mauris felis ultricies sapien, vitae pharetra
            libero ipsum sit amet nunc. Vestibulum quis mi justo. Sed
            non ullamcorper tellus. Cras sapien leo, tincidunt sit amet
            ultricies ut, adipiscing at nibh. Fusce elementum feugiat felis
            eu scelerisque. Ut ac arcu sagittis quam semper posuere et at lorem.
            Sed ut quam eu ante sagittis varius. Donec vel dolor vel enim
            porta tincidunt ut non ligula. Curabitur mattis tincidunt velit
            a imperdiet. Vestibulum ante ipsum primis in faucibus orci
            luctus et ultrices posuere cubilia Curae; Nulla commodo,
            nunc non ultrices aliquet, metus ante facilisis arcu, sit
            amet luctus turpis dolor at justo. Donec vitae hendrerit enim.
            Mauris aliquam purus a libero sollicitudin iaculis. In tincidunt
            mi viverra odio volutpat condimentum. Vivamus rhoncus metus in
            sapien porttitor auctor. Sed aliquet magna nec velit aliquam
            quis pellentesque tortor ultricies. Pellentesque euismod pellentesque
            est, at tristique diam tincidunt ac. Suspendisse non orci et
            arcu ornare viverra id vel tellus. Duis commodo pretium odio
            vitae bibendum.  Fusce eu ipsum elit. Suspendisse potenti.
            Suspendisse facilisis elit ac augue auctor ullamcorper.
            Maecenas bibendum condimentum orci, hendrerit lacinia nunc
            vehicula at. Sed tempor tincidunt mattis. Nullam imperdiet
            tempus dolor, quis fringilla mauris vehicula eget. Aenean velit
            risus, faucibus eu varius sit amet, vestibulum lobortis libero.
            Ut commodo condimentum fermentum. Phasellus elementum convallis
            nunc eget iaculis. Donec accumsan blandit blandit. Nam nec blandit
            leo. Nam dictum, arcu nec adipiscing blandit, ante magna feugiat
            est, dictum tristique sem metus ut nisi. Suspendisse leo justo,
            commodo eu lacinia a, egestas at tellus. Integer ut leo eget libero
            tristique porta eu lacinia augue. Nulla elementum condimentum leo
            vitae commodo. Nunc in nisi ac tortor feugiat pellentesque. }.freeze
def ipsum
  IPSUM.map(&:downcase)
end

def random_ipsum(n=24)
  words = []
  n.times do
    words << ipsum.sample
  end
  words.join ' '
end

widgets = (1..1000).map do |i|
  Widget.create(
    name: "Widget #{i}",
    length: i % 100,
    description: random_ipsum,
    occurred_at: Time.now - i.days
  )
end

widgets.each do |w|
  rand(10).times do |i|
    w.reviews.create(
      comment: random_ipsum,
      rating: rand(5)
    )
  end
end
