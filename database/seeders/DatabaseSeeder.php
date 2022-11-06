<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        User::create([
            'name' => 'Mproject Design',
            'email'=> 'mprojectdesign@gmail.com',
            'password' => bcrypt('12345')
        ]);

        User::create([
            'name' => 'Mas.Conan',
            'email'=> 'masconan@gmail.com',
            'password' => bcrypt('12345')
        ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Graphic Design',
            'slug' => 'graphic-design'
        ]);

        Post::create([
            'title' => 'Judul Pertama',
            'category_id' => 1,
            'user_id' => 1,
            'slug' => 'judul-pertama',
            'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, debitis.',
            'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore officiis aut expedita ipsam illo nam sit et pariatur natus, voluptatem mollitia perferendis minima voluptas nihil consequatur aliquid tempora facilis. Soluta est ipsa eos numquam, expedita aut reiciendis magnam. Vitae, dolorum, esse architecto nihil at quam quidem nostrum consequatur eaque delectus illo nesciunt harum nam dignissimos. Optio, qui! Totam aliquid explicabo nam tempore fuga labore? Quam commodi exercitationem quae neque tempora illum, esse quisquam necessitatibus eaque sapiente amet porro sint, officiis nostrum rem cum nulla fugit quidem earum. Incidunt, accusantium quia animi ex atque tenetur ullam numquam facilis veniam voluptas iste!'
        ]);

        Post::create([
            'title' => 'Judul Kedua',
            'category_id' => 1,
            'user_id' => 1,
            'slug' => 'judul-ke-dua',
            'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, debitis.',
            'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore officiis aut expedita ipsam illo nam sit et pariatur natus, voluptatem mollitia perferendis minima voluptas nihil consequatur aliquid tempora facilis. Soluta est ipsa eos numquam, expedita aut reiciendis magnam. Vitae, dolorum, esse architecto nihil at quam quidem nostrum consequatur eaque delectus illo nesciunt harum nam dignissimos. Optio, qui! Totam aliquid explicabo nam tempore fuga labore? Quam commodi exercitationem quae neque tempora illum, esse quisquam necessitatibus eaque sapiente amet porro sint, officiis nostrum rem cum nulla fugit quidem earum. Incidunt, accusantium quia animi ex atque tenetur ullam numquam facilis veniam voluptas iste!'
        ]);

        Post::create([
            'title' => 'Judul Ketiga',
            'category_id' => 2,
            'user_id' => 1,
            'slug' => 'judul-ke-tiga',
            'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, debitis.',
            'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore officiis aut expedita ipsam illo nam sit et pariatur natus, voluptatem mollitia perferendis minima voluptas nihil consequatur aliquid tempora facilis. Soluta est ipsa eos numquam, expedita aut reiciendis magnam. Vitae, dolorum, esse architecto nihil at quam quidem nostrum consequatur eaque delectus illo nesciunt harum nam dignissimos. Optio, qui! Totam aliquid explicabo nam tempore fuga labore? Quam commodi exercitationem quae neque tempora illum, esse quisquam necessitatibus eaque sapiente amet porro sint, officiis nostrum rem cum nulla fugit quidem earum. Incidunt, accusantium quia animi ex atque tenetur ullam numquam facilis veniam voluptas iste!'
        ]);
        Post::create([
            'title' => 'Judul Keempat',
            'category_id' => 2,
            'user_id' => 2,
            'slug' => 'judul-ke-empat',
            'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, debitis.',
            'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore officiis aut expedita ipsam illo nam sit et pariatur natus, voluptatem mollitia perferendis minima voluptas nihil consequatur aliquid tempora facilis. Soluta est ipsa eos numquam, expedita aut reiciendis magnam. Vitae, dolorum, esse architecto nihil at quam quidem nostrum consequatur eaque delectus illo nesciunt harum nam dignissimos. Optio, qui! Totam aliquid explicabo nam tempore fuga labore? Quam commodi exercitationem quae neque tempora illum, esse quisquam necessitatibus eaque sapiente amet porro sint, officiis nostrum rem cum nulla fugit quidem earum. Incidunt, accusantium quia animi ex atque tenetur ullam numquam facilis veniam voluptas iste!'
        ]);

    }
}