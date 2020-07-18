import { Module } from '@nestjs/common';

/**
 * @requires GraphQL
 */
import { GraphQLModule } from '@nestjs/graphql';

/**
 * @requires MongoDB
 */
import { MongooseModule } from '@nestjs/mongoose';

/**
 * @requires Modules
 */
import { CatsModule } from './cats/cats.module';

@Module({
  imports: [
    CatsModule,

    /**
   * @tutorial GraphQL
   */
    GraphQLModule.forRoot({
      typePaths: ['./**/*.graphql'],
      installSubscriptionHandlers: true,
    }),

    

    /**
     * @tutorial DI same as mongoose.connect
     */
    MongooseModule.forRoot(process.env.MONGODB)

  ],
})
export class AppModule {}
