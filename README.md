# docker-aws
The AWS CLI, in a Docker image

Handy for CoreOS, where running a Docker image is easy, but installing the AWS
CLI is hard. For instance, you could use it to download stuff from an S3 bucket
that requires authentication.

This is set up with an automated build at Docker Hub, and the entrypoint is the
aws executable, so you can use it like this:

    docker run --rm paperg/aws aws s3 ls

Of course you will have to configure credentials somehow; if you are running it
from at EC2 instance with an associated IAM profile, it will use those
automatically.
